.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_104", 0

a030_104:
    setmultihit 0x3, 0xDD
    changevar VAR_OP_SET, VAR_SUCCESSIVE_HIT, 0x1
    changevar VAR_OP_ADD, VAR_ABILITY_TEMP, 0xA
    critcalc
    damagecalc
    endscript

.close
