.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_150", 0

a030_150:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x80000008
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0xA
    ifmonstat IF_NOTMASK, BATTLER_DEFENDER, MON_DATA_MOVE_STATE, 0x100, _0048
    changevar VAR_OP_SET, VAR_DAMAGE_MULT, 0x14
_0048:
    critcalc
    damagecalc
    endscript

.close
