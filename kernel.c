#include "vga.h"


void kernel_main() {
    vga_init();

    vga_print("skija v0.1\nHello World!");
}
