UndergroundPathEntranceRoute8Script:
	ld a, ROUTE_8
	ld [wLastMap], a
	jp EnableAutoTextBoxDrawing

UndergroundPathEntranceRoute8TextPointers:
	dw UndergroundPathEntranceRoute8Text1

UndergroundPathEntranceRoute8Text1:
	TX_FAR _UGPathRoute7EntranceUnusedText_5d773
	db "@"
