.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_113", 0

a030_113:
    changevar VAR_OP_SET, VAR_STATUS2, 0x2000005B
    changevar VAR_OP_SETMASK, VAR_06, 0x8000
    endscript

.close
