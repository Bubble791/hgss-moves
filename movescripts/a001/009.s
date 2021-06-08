.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_009", 0

a001_009:
    trynaturalcure BATTLER_REPLACE, _0020
    changevartomonvalue VAR_OP_SET, BATTLER_REPLACE, VAR_BATTLE_STATUS, 0x0
_0020:
    returnmessage BATTLER_REPLACE
    waitmessage
    gotosubscript 153
    ifmonstat IF_NOTEQUAL, BATTLER_REPLACE, 0x2F, 0x0, _0054
    goto _006C
_0054:
    returnpokemon BATTLER_REPLACE
    waitmessage
    preparehpgaugeslide BATTLER_REPLACE
    waitmessage
_006C:
    switchindataupdate BATTLER_REPLACE
    loadballgfx
    initballguage BATTLER_REPLACE
    waitmessage
    if IF_EQUAL, VAR_43, 0x1, _00A8
    sentoutmessage BATTLER_REPLACE
    goto _00B8
_00A8:
    printmessage 0x3D3, 0x2, 0x6, "NaN", "NaN", "NaN", "NaN", "NaN"
_00B8:
    waitmessage
    deleteballguage BATTLER_REPLACE
    waitmessage
    deleteballgfx
    pokemonappear BATTLER_REPLACE
    waitwithoutbuttonpress 0x48
    hpgaugeslidein BATTLER_REPLACE
    waitmessage
    gotosubscript 99
    if IF_GREATER, VAR_FAINTED_BATTLER, 0x3, _0140
    changevar2 VAR_OP_TO_BIT, VAR_43, 0x12
    changevar VAR_OP_LSH, VAR_43, 0x18
    if2 IF_NOTMASK, VAR_06, 0x2B, _0140
    gotosubscript 6
_0140:
    endscript

.close
