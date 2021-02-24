AS := ca65
LD := ld65

TARGET := music.nes
OBJS := main.o

.PHONY: all clean

all: $(TARGET)

clean:
	rm -fr $(TARGET) $(OBJS)

$(OBJS): %.o : %.s
	$(AS) -o $@ $<

$(TARGET): $(OBJS)
	$(LD) -C nes.cfg $^ -o $@
