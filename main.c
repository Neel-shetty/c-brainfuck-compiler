#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BF_FILE_LEN 8192
#define MAX_FILE_NAME_LEN 256

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
      exit(1);
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

int main(int argc, char **argv) {
  char *program = NULL;
  program = read_bf_file("hello-world.bfs");
  printf("%s", program);
  return 0;
}
