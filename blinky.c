#include "stm8l.h"

int main() {
	int d;
	// Configure pins
	PC_DDR = 0xFF;
	PC_CR1 = 0xFF;
	PC_ODR = 0x00;
	// Loop
	do {
		//PC_ODR ^= 0xFF;
		for(d = 0; d < 29000; d++) { }
	} while(1);
}
