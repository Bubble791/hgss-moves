.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_167", 0

a030_167:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x80000003
    endscript

.close
