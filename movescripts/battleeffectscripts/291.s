.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_291", 0

a030_291:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, ADD_STATUS_V_CREATE | ADD_STATUS_ATTACK | 0x20000000
    critcalc
    damagecalc
    endscript

.close