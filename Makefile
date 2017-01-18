SDCC=sdcc
SDLD=sdld
OBJECTS=blinky.ihx uart.ihx

.PHONY: all clean flash

all: $(OBJECTS)

clean:
	rm -f $(OBJECTS)

flash: $(OBJECT).ihx
	stm8flash -cstlinkv2 -pstm8s003?3 -w $(OBJECT).ihx

%.ihx: %.c
	$(SDCC) -lstm8 -mstm8 --out-fmt-ihx $(CFLAGS) $(LDFLAGS) $<
