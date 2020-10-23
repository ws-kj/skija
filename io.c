#include "io.h"

void outb(uint16_t p, uint8_t n) {
    asm("outb %%al, %%dx" : : "a"(n), "d"(p));
}

uint8_t inb(uint16_t p) {
    uint8_t ret;
    asm("inb %%dx, %%al" : "=a"(ret) : "d"(p));
    return ret;
}
