.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_093", 0

a001_093:
    checknostatus BATTLER_DEFENDER, _0078
    ifmonstat IF_MASK, BATTLER_DEFENDER, 0x35, 0x8000000, _0078
    ifmonstat IF_NOTMASK, BATTLER_DEFENDER, 0x34, 0x7, _0078
    gotosubscript 76
    changevartomonvalue VAR_OP_SETMASK, BATTLER_DEFENDER, 0x35, 0x8000000
    printmessage 0x19B, 0x2, 0x2, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0078:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
