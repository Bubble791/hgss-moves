.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_084", 0

a001_084:
    if IF_MASK, VAR_10, 0x10001, _004C
    tryspite _004C
    gotosubscript 76
    printmessage 0x18E, 0x23, 0x2, 0xFF, 0xFF, "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_004C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
