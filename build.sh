i686-elf-gcc -c vga.c -o vga.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
i686-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
i686-elf-gcc -T linker.ld -o skija.bin -ffreestanding -O2 -nostdlib boot.o vga.o kernel.o
mkdir -p isodir/boot/grub
cp skija.bin isodir/boot/skija.bin
cp grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o skija.iso isodir

qemu-system-i386 -cdrom skija.iso
