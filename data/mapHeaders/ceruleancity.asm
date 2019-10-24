CeruleanCity_h:
	db HANADACITY ; tileset
	db CERULEAN_CITY_HEIGHT, CERULEAN_CITY_WIDTH ; dimensions (y, x)
	dw CeruleanCityBlocks, CeruleanCityTextPointers, CeruleanCityScript ; blocks, texts, scripts
	db NORTH | SOUTH | WEST ; connections
	NORTH_MAP_CONNECTION CERULEAN_CITY, ROUTE_24, 5, 0, Route24Blocks
	SOUTH_MAP_CONNECTION CERULEAN_CITY, ROUTE_5, 5, 0, Route5Blocks, 1
	WEST_MAP_CONNECTION CERULEAN_CITY, ROUTE_4, 4, 0, Route4Blocks
	dw CeruleanCityObject ; objects
