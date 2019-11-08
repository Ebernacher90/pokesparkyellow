Route25Object:
	db $2c ; border block

	db 1 ; warps
	warp 45,  1, 0, BILLS_HOUSE

	db 1 ; signs
	sign 43,  1, 11 ; Route25Text11

	db 10 ; objects
	object SPRITE_BUG_CATCHER, 11,  2, STAY, DOWN, 1, OPP_YOUNGSTER, 5
	object SPRITE_BUG_CATCHER, 18,  4, STAY, UP, 2, OPP_YOUNGSTER, 6
	object SPRITE_BLACK_HAIR_BOY_1, 24,  2, STAY, DOWN, 3, OPP_JR_TRAINER_M, 2
	object SPRITE_LASS, 17,  9, STAY, RIGHT, 4, OPP_LASS, 9
	object SPRITE_BUG_CATCHER, 34,  2, STAY, LEFT, 5, OPP_YOUNGSTER, 7
	object SPRITE_LASS, 38,  3, STAY, DOWN, 6, OPP_LASS, 10
	object SPRITE_HIKER,  8,  4, STAY, RIGHT, 7, OPP_HIKER, 2
	object SPRITE_HIKER, 27,  9, STAY, UP, 8, OPP_HIKER, 3
	object SPRITE_HIKER, 13,  7, STAY, LEFT, 9, OPP_HIKER, 4
	object SPRITE_BALL, 28,  2, STAY, NONE, 10, TM_19

	; warp-to
	warp_to 45,  1, ROUTE_25_WIDTH ; BILLS_HOUSE
