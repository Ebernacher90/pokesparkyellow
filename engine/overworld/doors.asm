; returns whether the player is standing on a door tile in carry
IsPlayerStandingOnDoorTile:
	push de
	ld hl, DoorTileIDPointers
	ld a, [wCurMapTileset]
	ld de, $3
	call IsInArray
	pop de
	jr nc, .notStandingOnDoor
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	aCoord 8, 9 ; a = lower left background tile under player's sprite
	ld b, a
.loop
	ld a, [hli]
	and a
	jr z, .notStandingOnDoor
	cp b
	jr nz, .loop
	scf
	ret
.notStandingOnDoor
	and a
	ret

DoorTileIDPointers:
	dbw OVERWORLD,   OverworldDoorTileIDs
	dbw FOREST,      ForestDoorTileIDs
	dbw MART,        MartDoorTileIDs
	dbw HOUSE,       HouseDoorTileIDs
	dbw FOREST_GATE, TilesetMuseumDoorTileIDs
	dbw MUSEUM,      TilesetMuseumDoorTileIDs
	dbw GATE,        TilesetMuseumDoorTileIDs
	dbw SHIP,        ShipDoorTileIDs
	dbw LOBBY,       LobbyDoorTileIDs
	dbw MANSION,     MansionDoorTileIDs
	dbw LAB,         LabDoorTileIDs
	dbw FACILITY,    FacilityDoorTileIDs
	dbw PLATEAU,     PlateauDoorTileIDs
	dbw INTERIOR,    InteriorDoorTileIDs
	dbw MASARATOWN,  MasaraTownDoorTileIDs
	dbw TOKIWACITY,  TokiwaCityDoorTileIDs
	dbw NIBICITY,    NibiCityDoorTileIDs
	dbw HANADACITY,  HanadaCityDoorTileIDs
	db $ff

OverworldDoorTileIDs:
	db $1b,$58,$00

ForestDoorTileIDs:
	db $3a,$00

MartDoorTileIDs:
	db $5e,$00

HouseDoorTileIDs:
	db $54,$00

TilesetMuseumDoorTileIDs:
	db $3b,$00

ShipDoorTileIDs:
	db $1e,$00

LobbyDoorTileIDs:
	db $1c,$38,$1a,$00

MansionDoorTileIDs:
	db $1a,$1c,$53,$00

LabDoorTileIDs:
	db $34,$00

FacilityDoorTileIDs:
	db $43,$58,$1b,$00

PlateauDoorTileIDs:
	db $3b,$1b,$00

InteriorDoorTileIDs:
	db $04,$15,$00

MasaraTownDoorTileIDs:
	db $1b,$00

TokiwaCityDoorTileIDs:
	db $1b,$6e,$00

NibiCityDoorTileIDs:
	db $1a,$6e,$00

HanadaCityDoorTileIDs:
	db $1b,$5e,$6e,$00
