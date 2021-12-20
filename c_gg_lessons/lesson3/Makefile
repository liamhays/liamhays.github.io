all:
	sdcc -c -mz80 --peep-file ../peep-rules.txt silver_tiles.c
	sdcc -c -mz80 --peep-file ../peep-rules.txt silver_tilemap.c
	sdcc -c -mz80 --peep-file ../peep-rules.txt silver.c
	sdcc -o silver.ihx -mz80 --no-std-crt0 --data-loc 0xC000 ../crt0_sms.rel silver.rel silver_tiles.rel silver_tilemap.rel ../SMSlib_GG.lib
	ihx2sms silver.ihx silver.gg
