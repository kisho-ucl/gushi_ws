#include <stdio.h>

void pass_image_to_c_function(const unsigned char* image_data, int width, int height, int step) {
  // 受け取った画像データをC言語で処理
  printf("width: %d, height: %d, step: %d\n", width, height, step);
  // FILE *file = fopen("image_output.raw", "wb");
  //fwrite(image_data, 1, width * height * 3, file); // 3はRGBの場合の例
  // fclose(file);
}
