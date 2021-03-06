CXX=avr-g++
CXX_FLAGS=-std=c++14 -Wall -Wextra -Werror -Os

# This is the list of all possible mmcu values that are not assembly-only chips.
# It comes from https://gcc.gnu.org/onlinedocs/gcc/AVR-Options.html. Not all of
# them have been tested, but they do all compile correctly.
ATMEL_MODELS= \
	attiny22 \
	attiny26 \
	at90c8534 \
	at90s2313 \
	at90s2323 \
	at90s2333 \
	at90s2343 \
	at90s4414 \
	at90s4433 \
	at90s4434 \
	at90s8515 \
	at90s8535 \
	ata5272 \
	ata6616c \
	attiny13 \
	attiny13a \
	attiny2313 \
	attiny2313a \
	attiny24 \
	attiny24a \
	attiny25 \
	attiny261 \
	attiny261a \
	attiny43u \
	attiny4313 \
	attiny44 \
	attiny44a \
	attiny441 \
	attiny45 \
	attiny461 \
	attiny461a \
	attiny48 \
	attiny828 \
	attiny84 \
	attiny84a \
	attiny841 \
	attiny85 \
	attiny861 \
	attiny861a \
	attiny87 \
	attiny88 \
	at86rf401 \
	at43usb355 \
	at76c711 \
	atmega103 \
	at43usb320 \
	ata5505 \
	ata6617c \
	ata664251 \
	atmega16u2 \
	atmega32u2 \
	atmega8u2 \
	attiny1634 \
	attiny167 \
	at90usb162 \
	at90usb82 \
	ata6285 \
	ata6286 \
	ata6289 \
	ata6612c \
	atmega48 \
	atmega48a \
	atmega48p \
	atmega48pa \
	atmega8 \
	atmega8a \
	atmega8hva \
	atmega8515 \
	atmega8535 \
	atmega88 \
	atmega88a \
	atmega88p \
	atmega88pa \
	at90pwm1 \
	at90pwm2 \
	at90pwm2b \
	at90pwm3 \
	at90pwm3b \
	at90pwm81 \
	ata5702m322 \
	ata5782 \
	ata5790 \
	ata5790n \
	ata5795 \
	ata5831 \
	ata6613c \
	ata6614q \
	atmega16 \
	atmega16a \
	atmega16hva \
	atmega16hva2 \
	atmega16hvb \
	atmega16hvbrevb \
	atmega16m1 \
	atmega16u4 \
	atmega161 \
	atmega162 \
	atmega163 \
	atmega164a \
	atmega164p \
	atmega164pa \
	atmega165 \
	atmega165a \
	atmega165p \
	atmega165pa \
	atmega168 \
	atmega168a \
	atmega168p \
	atmega168pa \
	atmega169 \
	atmega169a \
	atmega169p \
	atmega169pa \
	atmega32 \
	atmega32a \
	atmega32c1 \
	atmega32hvb \
	atmega32hvbrevb \
	atmega32m1 \
	atmega32u4 \
	atmega32u6 \
	atmega323 \
	atmega324a \
	atmega324p \
	atmega324pa \
	atmega325 \
	atmega325a \
	atmega325p \
	atmega325pa \
	atmega3250 \
	atmega3250a \
	atmega3250p \
	atmega3250pa \
	atmega328 \
	atmega328p \
	atmega329 \
	atmega329a \
	atmega329p \
	atmega329pa \
	atmega3290 \
	atmega3290a \
	atmega3290p \
	atmega3290pa \
	atmega406 \
	atmega64 \
	atmega64a \
	atmega64c1 \
	atmega64hve \
	atmega64hve2 \
	atmega64m1 \
	atmega64rfr2 \
	atmega640 \
	atmega644 \
	atmega644a \
	atmega644p \
	atmega644pa \
	atmega644rfr2 \
	atmega645 \
	atmega645a \
	atmega645p \
	atmega6450 \
	atmega6450a \
	atmega6450p \
	atmega649 \
	atmega649a \
	atmega649p \
	atmega6490 \
	atmega6490a \
	atmega6490p \
	at90can32 \
	at90can64 \
	at90pwm161 \
	at90pwm216 \
	at90pwm316 \
	at90scr100 \
	at90usb646 \
	at90usb647 \
	at94k \
	m3000 \
	atmega128 \
	atmega128a \
	atmega128rfa1 \
	atmega128rfr2 \
	atmega1280 \
	atmega1281 \
	atmega1284 \
	atmega1284p \
	atmega1284rfr2 \
	at90can128 \
	at90usb1286 \
	at90usb1287 \
	atmega256rfr2 \
	atmega2560 \
	atmega2561 \
	atmega2564rfr2 \
	atxmega16a4 \
	atxmega16a4u \
	atxmega16c4 \
	atxmega16d4 \
	atxmega16e5 \
	atxmega32a4 \
	atxmega32a4u \
	atxmega32c3 \
	atxmega32c4 \
	atxmega32d3 \
	atxmega32d4 \
	atxmega32e5 \
	atxmega8e5 \
	atxmega64a3 \
	atxmega64a3u \
	atxmega64a4u \
	atxmega64b1 \
	atxmega64b3 \
	atxmega64c3 \
	atxmega64d3 \
	atxmega64d4 \
	atxmega64a1 \
	atxmega64a1u \
	atxmega128a3 \
	atxmega128a3u \
	atxmega128b1 \
	atxmega128b3 \
	atxmega128c3 \
	atxmega128d3 \
	atxmega128d4 \
	atxmega192a3 \
	atxmega192a3u \
	atxmega192c3 \
	atxmega192d3 \
	atxmega256a3 \
	atxmega256a3b \
	atxmega256a3bu \
	atxmega256a3u \
	atxmega256c3 \
	atxmega256d3 \
	atxmega384c3 \
	atxmega384d3 \
	atxmega128a1 \
	atxmega128a1u \
	atxmega128a4u \
	attiny10 \
	attiny20 \
	attiny4 \
	attiny40 \
	attiny5 \
	attiny9 \

all:
	mkdir -p obj
	mkdir -p lib
	$(foreach model, $(ATMEL_MODELS), \
	  $(CXX) $(CXX_FLAGS) -mmcu=$(model) -c src/avr.cpp -o obj/avr_$(model).o \
	  && ar rcs lib/libavr_$(model).a obj/avr_$(model).o;)

clean:
	rm -rf obj
	rm -rf lib
