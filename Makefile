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

ndk:
	ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk NDK_APPLICATION_MK=./Application.mk
	cp libs/arm64-v8a/omc-decoder ./libomc-decoder

clean:
	@$(RM) omc-decoder libomc-decoder
	@$(RM) -r libs obj
	@$(RM) *.o
	@echo 'Clean Done.'
