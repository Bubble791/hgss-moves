.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_232", 0

a030_232:
    checknostatus BATTLER_DEFENDER, _0020
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0xA0000086
    endscript
_0020:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
