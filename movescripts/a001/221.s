.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_221", 0

a001_221:
    printmessage 0x2E4, 0x29, 0xFF, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_xFF, 0x0
    wait 0x1E
    if IF_EQUAL, VAR_22, 0x0, _0088
    if IF_EQUAL, VAR_22, 0x5, _00B8
    if IF_EQUAL, VAR_22, 0x6, _00D4
    changevartomonvalue VAR_OP_SET, BATTLER_xFF, VAR_BATTLE_STATUS, 0x0
    goto _00E8
_0088:
    changevartomonvalue VAR_OP_SET, BATTLER_xFF, VAR_BATTLE_STATUS, 0x0
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, VAR_MOVE_BACKUP, 0x8000000
    goto _00E8
_00B8:
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, VAR_MOVE_BACKUP, 0x7
    goto _00E8
_00D4:
    changevartomonvalue VAR_OP_CLEARMASK, BATTLER_xFF, VAR_MOVE_BACKUP, 0xF0000
_00E8:
    endscript

.close
