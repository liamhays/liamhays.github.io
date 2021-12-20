#define TARGET_GG

#include "../SMSlib.h"
#include "silver_tiles.h"
#include "silver_palette.h"
#include "silver_tilemap.h"

SMS_EMBED_SEGA_ROM_HEADER(1, 1);
SMS_EMBED_SDSC_HEADER_AUTO_DATE(1, 0, "Liam Hays", "Silver: Lesson 3",
                                "Silver the Hedgehog on screen");
	  
void main() {
  SMS_loadTiles(silver_tiles, 0, silver_tiles_length);
  SMS_loadTileMapArea(6, 3, silver_tilemap, 10, 20);
  GG_loadBGPalette(silver_palette);

  SMS_displayOn();
  // while (1);
}
