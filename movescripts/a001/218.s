.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_218", 0

a001_218:
    if IF_MASK, VAR_10, 0x10001, _00E8
    checknostatus BATTLER_DEFENDER, _00E8
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, 0x1A, 0x79, _00E8
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, 0x51, 0x0, _00E8
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, 0x37, 0x70, _00E8
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, 0x56, 0x0, _00E8
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, 0x55, 0x0, _00E8
    gotosubscript 76
    changevartomonvalue VAR_OP_SETMASK, BATTLER_DEFENDER, VAR_RULESET, 0x4000000
    changevartomonvalue VAR_OP_SET, BATTLER_DEFENDER, ABILITY_STATIC, 0x5
    printmessage 0x46F, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_00E8:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
