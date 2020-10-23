#ifndef IO_H
#define IO_H

#include <stdint.h>

void outb(uint16_t p, uint8_t n);
uint8_t inb(uint16_t p);

#endif
