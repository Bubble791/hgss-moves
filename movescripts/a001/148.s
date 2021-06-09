.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_148", 0

a001_148:
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, 0x13, 0x0, _0030
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, 0x14, 0x0, _00CC
_0030:
    if IF_MASK, VAR_10, 0x10001, _00B8
    changevar VAR_OP_SETMASK, VAR_60, 0x80
    changevar VAR_OP_SET, VAR_34, 0x16
    gotosubscript 12
    changevar VAR_OP_SETMASK, VAR_06, 0x200000
    changevar VAR_OP_SET, VAR_34, 0x17
    gotosubscript 12
    changevar VAR_OP_CLEARMASK, VAR_60, 0x2
    changevar VAR_OP_CLEARMASK, VAR_60, 0x80
    endscript
_00B8:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript
_00CC:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x303, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_10, 0x80000000
    endscript

.close
