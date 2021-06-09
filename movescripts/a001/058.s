.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_058", 0

a001_058:
    checknostatus BATTLER_ADDL_EFFECT, _00B0
    ifmonstat IF_MASK, BATTLER_DEFENDER, 0x35, 0xE000, _00B0
    printpreparedmessage
    waitmessage
    wait 0x1E
    random 3, 3
    checkitemeffect 0x1, BATTLER_ATTACKER, 0x72, _0064
    changevar VAR_OP_SET, VAR_09, 0x6
_0064:
    changevar VAR_OP_LSH, VAR_09, 0xD
    changevartomonvalue2 VAR_OP_SETMASK, BATTLER_DEFENDER, 0x35, VAR_09
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x4C, VAR_ATTACKER
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x5E, VAR_CURRENT_MOVE
_00B0:
    endscript

.close
