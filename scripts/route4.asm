Route4Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route4TrainerHeaders
	ld de, Route4ScriptPointers
	ld a, [wRoute4CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute4CurScript], a
	ret

Route4ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

Route4TextPointers:
	dw Route4Text2
	dw PickUpItemText
	dw Route4Text6

Route4TrainerHeaders:
Route4TrainerHeader0:
	dbEventFlagBit EVENT_BEAT_ROUTE_4_TRAINER_0
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_4_TRAINER_0
	dw Route4BattleText1 ; TextBeforeBattle
	dw Route4AfterBattleText1 ; TextAfterBattle
	dw Route4EndBattleText1 ; TextEndBattle
	dw Route4EndBattleText1 ; TextEndBattle

	db $ff

Route4Text2:
	TX_ASM
	ld hl, Route4TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route4BattleText1:
	TX_FAR _Route4BattleText1
	db "@"

Route4EndBattleText1:
	TX_FAR _Route4EndBattleText1
	db "@"

Route4AfterBattleText1:
	TX_FAR _Route4AfterBattleText1
	db "@"

Route4Text6:
	TX_FAR _Route4Text6
	db "@"
