.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_169", 0

a030_169:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, 0x34, 0xD8, _0028
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14
_0028:
    critcalc
    damagecalc
    endscript

.close
