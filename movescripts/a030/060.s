.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_060", 0

a030_060:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x80000030
    endscript

.close
