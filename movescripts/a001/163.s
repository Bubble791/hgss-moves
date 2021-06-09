.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_163", 0

a001_163:
    checknostatus BATTLER_DEFENDER, _008C
    ifmonstat IF_MASK, BATTLER_DEFENDER, 0x3B, 0x200000, _008C
    if IF_MASK, VAR_10, 0x10001, _008C
    ifmonstat IF_EQUAL, BATTLER_DEFENDER, 0x1A, 0x79, _008C
    gotosubscript 76
    changevartomonvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x3B, 0x200000
    printmessage 0x3F4, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_008C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
