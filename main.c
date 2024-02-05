#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define DA_INIT_CAPACITY 8192
#define DA_REALLOC(oldptr, oldsz, newsz) realloc(oldptr, newsz)
#define da_append(da, item)                                                    \
  do {                                                                         \
    if ((da)->count >= (da)->capacity) {                                       \
      size_t new_capacity = (da)->capacity * 2;                                \
      if (new_capacity == 0) {                                                 \
        new_capacity = DA_INIT_CAPACITY;                                       \
      }                                                                        \
                                                                               \
      (da)->items =                                                            \
          DA_REALLOC((da)->items, (da)->capacity * sizeof((da)->items[0]),     \
                     new_capacity * sizeof((da)->items[0]));                   \
      (da)->capacity = new_capacity;                                           \
    }                                                                          \
                                                                               \
    (da)->items[(da)->count++] = (item);                                       \
  } while (0)

#define BF_FILE_LEN 8192
#define MAX_FILE_NAME_LEN 256

#define TAPE_LENGTH 1000
int tape[TAPE_LENGTH] = {0};
int tape_index = 0;

enum token_type {
  MOVE_RIGHT = '>',
  MOVE_LEFT = '<',
  INCREMENT = '+',
  DECREMENT = '-',
  OUTPUT = '.',
  INPUT = ',',
  JUMP_FORWARD = '[',
  JUMP_BACKWARD = ']',
};

struct token {
  enum token_type type;
  uint index;
};

struct instructions {
  struct token *items;
  size_t count;
  size_t capacity;
};

enum result_type {
  OK,
  ERROR_UNMATCHED_JF,
  ERROR_UNMATCHED_JB,
};

struct result {
  enum result_type type;
  uint index;
};

struct instructions *init_instructions() {
  struct instructions *instructions = malloc(sizeof(struct instructions));

  instructions->items = NULL;
  instructions->count = 0;
  instructions->capacity = 0;

  return instructions;
}

void free_instructions(struct instructions *instructions) {
  free(instructions->items);
  free(instructions);
}

char *read_bf_file(char *name) {
  FILE *f = NULL;
  uint count = 0;
  uint capacity = BF_FILE_LEN;
  char *program = calloc(BF_FILE_LEN, sizeof(char));

  if (NULL == name) {
    f = stdin;
  } else {
    f = fopen(name, "r");
    if (NULL == f) {
      perror("failed to open file");
      exit(EXIT_FAILURE);
    }
  }

  char buffer[MAX_FILE_NAME_LEN];
  while (fgets(buffer, MAX_FILE_NAME_LEN, f)) {
    uint len = strlen(buffer);
    if (capacity < count + len + 1) {
      capacity *= 2;
      program = realloc(program, capacity * sizeof(char));
    }
    strcat(program, buffer);
    count += len;
    program[count] = '\0';
  }

  if (name != NULL) {
    fclose(f);
  }

  return program;
}

void parse_instructions(struct instructions *instructions, char *program) {
  for (size_t i = 0; i < strlen(program); i++) {
    switch (program[i]) {
    case '>':
      da_append(instructions, ((struct token){MOVE_RIGHT, i}));
      break;
    case '<':
      da_append(instructions, ((struct token){MOVE_LEFT, i}));
      break;
    case '+':
      da_append(instructions, ((struct token){INCREMENT, i}));
      break;
    case '-':
      da_append(instructions, ((struct token){DECREMENT, i}));
      break;
    case '.':
      da_append(instructions, ((struct token){OUTPUT, i}));
      break;
    case ',':
      da_append(instructions, ((struct token){INPUT, i}));
      break;
    case '[':
      da_append(instructions, ((struct token){JUMP_FORWARD, i}));
      break;
    case ']':
      da_append(instructions, ((struct token){JUMP_BACKWARD, i}));
      break;
    default:
      break;
    }
  }
}

struct brackets {
  uint *items;
  size_t count;
  size_t capacity;
};

struct result check_matching_brackets(struct instructions *instructions) {
  struct brackets counter = {NULL, 0, 0};

  for (size_t i = 0; i < instructions->count; i++) {
    struct token t = instructions->items[i];
    if (t.type == JUMP_FORWARD) {
      da_append(&counter, t.index);
    } else if (t.type == JUMP_BACKWARD) {
      if (counter.count == 0) {
        return (struct result){ERROR_UNMATCHED_JB, t.index};
      }
      counter.count--;
    }
  }

  if (counter.count != 0) {
    return (struct result){ERROR_UNMATCHED_JF, counter.items[0]};
  }

  if (counter.items != NULL) {
    free(counter.items);
  }

  return (struct result){OK, 0};
}

void generate_assembly(struct instructions *instructions, char *name) {
  FILE *f = NULL;

  if (NULL == name) {
    f = stdout;
  } else {
    f = fopen(name, "w+");
  }
}

void interpret_move_right(uint count) {
  for (uint i = 0; i < count; i++) {
    if (tape_index < TAPE_LENGTH) {
      tape_index++;
    }
  }
  return;
}
void interpret_move_left(uint count) {
  for (uint i = 0; i < count; i++) {
    if (tape_index != 0) {
      tape_index--;
    }
    return;
  }
}
void interpret_increment(uint count) {
  for (uint i = 0; i < count; i++) {
    if (tape[tape_index] == 255) {
      tape[tape_index] = 0;
      continue;
    }
    tape[tape_index] += 1;
  }
}
void interpret_decrement(uint count) {
  for (uint i = 0; i < count; i++) {
    if (tape[tape_index] == 255) {
      tape[tape_index] = 0;
      continue;
    }
    tape[tape_index] -= 1;
  }
}

void interpret_instructions(struct instructions *instructions, char *name,
                            int *index) {
  while (*index < instructions->count) {
    switch (instructions->items[*index].type) {
    case MOVE_RIGHT: {
      uint count = 1;
      while (*index < instructions->count - 1 &&
             instructions->items[*index + 1].type == MOVE_RIGHT) {
        count++;
        (*index)++;
      }
      interpret_move_right(count);
      break;
    }
    case MOVE_LEFT: {
      uint count = 1;
      while (*index < instructions->count - 1 &&
             instructions->items[*index + 1].type == MOVE_LEFT) {
        count++;
        (*index)++;
      }
      interpret_move_left(count);
      break;
    }
    case INCREMENT: {
      uint count = 1;
      while (*index < instructions->count - 1 &&
             instructions->items[*index + 1].type == INCREMENT) {
        count++;
        (*index)++;
      }
      interpret_increment(count);
      break;
    }
    case DECREMENT: {
      uint count = 1;
      while (*index < instructions->count - 1 &&
             instructions->items[*index + 1].type == INCREMENT) {
        count++;
        (*index)++;
      }
      interpret_decrement(count);
      break;
    }
    case OUTPUT:
      printf("%c", tape[tape_index]);
      break;
    case INPUT:
      scanf("%d", &tape[tape_index]);
      break;
    case JUMP_FORWARD:
      if (tape[tape_index] == 0) {
        int loop_count = 1;
        while (loop_count > 0) {
          (*index)++;
          if (instructions->items[*index].type == JUMP_FORWARD) {
            loop_count++;
          } else if (instructions->items[*index].type == JUMP_BACKWARD) {
            loop_count--;
          }
        }
      }
      break;
    case JUMP_BACKWARD:
      if (tape[tape_index] != 0) {
        int loop_count = 1;
        while (loop_count > 0) {
          (*index)--;
          if (instructions->items[*index].type == JUMP_FORWARD) {
            loop_count--;
          } else if (instructions->items[*index].type == JUMP_BACKWARD) {
            loop_count++;
          }
        }
      }
      break;
    default:
      break;
    }
    (*index)++;
  }
  return;
}

void print_instructions(const struct instructions *instrs) {
  if (instrs == NULL) {
    return;
  }

  printf("Instructions:\n");
  printf("Count: %zu\n", instrs->count);
  printf("Capacity: %zu\n", instrs->capacity);

  if (instrs->count > 0) {
    printf("Token Type    Index\n");
    printf("---------------------\n");
    for (size_t i = 0; i < instrs->count; i++) {
      printf("%-14c%zu\n", (char)instrs->items[i].type,
             (size_t)instrs->items[i].index);
    }
  } else {
    printf("No instructions.\n");
  }
}

int main(int argc, char **argv) {
  char *program = NULL;
  struct instructions *instructions = NULL;
  int result = 0;
  // FILE *output;
  // output = fopen("output.txt", "w+");
  char *output = "output.txt";
  program = read_bf_file("hello-world.bf");
  // printf("%s", program);
  instructions = init_instructions();
  parse_instructions(instructions, program);
  print_instructions(instructions);

  struct result r = check_matching_brackets(instructions);
  if (r.type != OK) {
    printf("unmatched brackets");
    result = 1;
    goto cleanup;
  }

  interpret_instructions(instructions, "output.txt", &tape_index);
  // generate_assembly(instructions, output);

cleanup:
  if (instructions != NULL) {
    free(instructions);
  }
  if (program != NULL) {
    free(program);
  }
  return result;
}
