Route16Object:
	db $f ; border block

	db 2 ; warps
	warp 35, 10, 0, ROUTE_16_GATE_1F
	warp 7, 5, 0, ROUTE_16_HOUSE

	db 2 ; signs
	sign 27, 11, 8 ; Route16Text8
	sign 5, 17, 9 ; Route16Text9

	db 7 ; objects
	object SPRITE_BIKER, 17, 12, STAY, LEFT, 1, OPP_BIKER, 5
	object SPRITE_BIKER, 14, 13, STAY, RIGHT, 2, OPP_CUE_BALL, 1
	object SPRITE_BIKER, 11, 12, STAY, UP, 3, OPP_CUE_BALL, 2
	object SPRITE_BIKER, 9, 11, STAY, LEFT, 4, OPP_BIKER, 6
	object SPRITE_BIKER, 6, 10, STAY, RIGHT, 5, OPP_CUE_BALL, 3
	object SPRITE_BIKER, 3, 12, STAY, RIGHT, 6, OPP_BIKER, 7
	object SPRITE_SNORLAX, 26, 10, STAY, DOWN, 7 ; person

	; warp-to
	warp_to 35, 10, ROUTE_16_WIDTH ; ROUTE_16_GATE_1F
	warp_to 7, 5, ROUTE_16_WIDTH ; ROUTE_16_HOUSE
