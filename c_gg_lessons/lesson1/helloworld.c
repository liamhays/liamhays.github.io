#define TARGET_GG

#include "SMSlib.h"
#include <stdio.h>
	  
SMS_EMBED_SEGA_ROM_HEADER(1, 1);
SMS_EMBED_SDSC_HEADER_AUTO_DATE(1, 0, "Liam Hays", "Hello World",
                                "Introduction to SMSlib programming");
	  
void main() {
  SMS_autoSetUpTextRenderer();
  SMS_setNextTileatXY(6,3);
  printf("Hello World");
}
