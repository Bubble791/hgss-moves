.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_092", 0

a030_092:
    ifmonstat IF_NOTMASK, BATTLER_ATTACKER, 0x34, 0x7, _0050
    if IF_EQUAL, VAR_MOVE_TEMP, 0xD6, _0034
    gotosubscript 20
_0034:
    changevar VAR_OP_SETMASK, VAR_ADD_STATUS2, 0x80000008
    critcalc
    damagecalc
    endscript
_0050:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
