.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_132", 0

a001_132:
    ifmonstat IF_NOTEQUAL, BATTLER_DEFENDER, 0x40, 0x0, _0074
    if IF_MASK, VAR_10, 0x10001, _0074
    gotosubscript 76
    random 2, 3
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x40, VAR_09
    printmessage 0x1F4, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0074:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
