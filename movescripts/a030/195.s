.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_195", 0

a030_195:
    trysnatch _002C
    preparemessage 0x241, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_SET, VAR_STATUS2, 0x2000005A
    endscript
_002C:
    changevar VAR_OP_SET, VAR_10, 0x40
    endscript

.close
