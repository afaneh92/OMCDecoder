CPP = g++
RM = rm -f
CFLAGS =
INC = -Iinclude
LDFLAGS = -lz

all:omc-decoder

omc-decoder:omc-decoder.o
	$(CPP) -o $@ $^ $(LDFLAGS)

%.o:%.cpp
	$(CPP) -o $@ $(CFLAGS) -c $< $(INC)

clean:
	@$(RM) omc-decoder
	@$(RM) *.o
	@echo 'Clean Done.'
