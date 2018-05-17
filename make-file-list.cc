#include <stdio.h>
#include <math.h>
#include <stdlib.h>


int main(int argc, char* argv[]) {
  uint count = 100;
  const char* prefix = "file_";

  if (argc > 1) {
    prefix = argv[1];
  }

  if (argc > 2) {
    count = atoi(argv[2]);
  }

  uint digits = uint(ceil(log10(count - 1)));

  for (uint i = 0; i < count; ++i) {
    printf("%s%0*u\n", prefix, digits, i);
  }
}
