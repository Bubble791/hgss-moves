.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_215", 0

a030_215:
    if IF_MASK, VAR_FIELD_EFFECT, 0x7000, _0028
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000076
    endscript
_0028:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
