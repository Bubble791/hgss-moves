.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_220", 0

a030_220:
    tryswitchinmon BATTLER_ATTACKER, 0x1, _0024
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000078
    endscript
_0024:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
