.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_105", 0

a030_105:
    changevar VAR_OP_SET, VAR_STATUS2, 0x8100001F
    critcalc
    damagecalc
    endscript

.close
