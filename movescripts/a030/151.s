.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a030\a030_151", 0

a030_151:
    checkcloudnine _001C
    if IF_MASK, VAR_FIELD_EFFECT, 0x30, _0074
_001C:
    ifmonstat IF_MASK, BATTLER_ATTACKER, 0x35, 0x1000, _0088
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x63, _006C
    changevar VAR_OP_SET, VAR_STATUS1, 0x4000000C
    changevar VAR_OP_SETMASK, VAR_06, 0x23
    endscript
_006C:
    gotosubscript 217
_0074:
    if IF_EQUAL, VAR_DEFENDER, 0xFF, _0090
_0088:
    critcalc
    damagecalc
_0090:
    gotosubscript 259
    endscript

.close
