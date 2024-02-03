#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BF_FILE_LEN 8192
#define MAX_FILE_NAME_LEN 256

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
      break;
    case '<':
      break;
    case '+':
      break;
    case '-':
      break;
    case '.':
      break;
    case ',':
      break;
    case '[':
      break;
    case ']':
      break;
    }
  }
}

int main(int argc, char **argv) {
  char *program = NULL;
  struct instructions *instructions = NULL;
  // FILE *output;
  // output = fopen("output.txt", "w+");
  char *output;
  program = read_bf_file("hello-world.bf");
  // printf("%s", program);
  instructions = init_instructions();
  parse_instructions(instructions, program);

  if (program != NULL) {
    free(program);
  }
  return 0;
}
