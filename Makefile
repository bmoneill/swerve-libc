include config.mk

LIBC_DIR=libc
C_SOURCES=$(patsubst %.c, %.o, $(shell find $(LIBC_DIR) | grep "\.c"))
INCLUDES=-I$(LIBC_DIR)/include

all: $(TARGET)

clean:
	@echo CLEANING
	@rm -rf $(LIBC_TARGET) $(TARGET) $(C_SOURCES:.c=.o) 
	@echo DONE

dist: clean
	@mkdir $(TARGET)
	@cp -r libc/ config.mk LICENSE Makefile README.md $(TARGET)
	@tar -cf $(TARGET).tar $(TARGET)
	@rm -rf $(TARGET)
	@gzip $(TARGET).tar
	@echo DIST

install: $(TARGET)
	@cp -r $(LIBC_DIR)/include $(DESTDIR)$(PREFIX)/include/swerve
	@mkdir -p $(DESTDIR)$(PREFIX)/lib/swerve
	@cp $(TARGET) $(DESTDIR)$(PREFIX)/lib/swerve
	@echo INSTALL

$(TARGET): $(C_SOURCES)
	@$(AR) rcs $@ $^
	@echo AR $@
	@$(RANLIB) $@
	@echo RANLIB $@

%.o: %.c
	@$(CC) $(CFLAGS) $(INCLUDES) -o $@ -c $^
	@echo CC $@

.PHONY: all clean dist $(TARGET)
