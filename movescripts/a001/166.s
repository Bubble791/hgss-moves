.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_166", 0

a001_166:
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x14, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x14, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x14, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x14, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x17, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x17, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x17, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_DEFENDER, 0x17, VAR_09
    printmessage 0x3FA, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
