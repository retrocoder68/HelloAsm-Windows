# Copyright (C) 2023 Skywalker <j.karlsson@retrocoder.se>

# Program and object files
APP=hello
OBJS=hello.o

# Tools
AS=as
LD=lld-link
RM=del

# Flags
ASFLAGS=
LDFLAGS=/subsystem:console /safeseh:no /entry:_start /libpath:"C:\Program Files (x86)\Windows Kits\10\Lib\10.0.22621.0\um\x64" kernel32.lib

# Targets
$(APP): $(OBJS)
	$(LD) $(LDFLAGS) /out:$@ $^

%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $^

.PHONY: test clean

test: $(APP)
	./$(APP)

clean:
	$(RM) $(APP) $(OBJS)

