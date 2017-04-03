#include<stdio.h>

void if_assemble(char str) {
  if (str == 'A') {
    printf("Aが出ました");
  } else if (str == 'B') {
    printf("Bが出ました");
  } else {
    printf("何も起きませんでした");
  }
}

void switch_assemble(char str) {
  switch (str) {
    case 'A':
      printf("Aが出ました");
      break;
    case 'B':
      printf("Bが出ました");
      break;
    default:
      printf("何も起きませんでした");
      break;
  }
}

int main() {

  // if文のアセンブラ
  if_assemble('A');

  // switch文のアセンブラ
  switch_assemble('A');

  return 0;
}
