.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_162", 0

a001_162:
    changevartomonvalue VAR_OP_XOR, BATTLER_ATTACKER, 0x3B, 0x800000
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x1, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x1, VAR_43
    changevartomonvalue2 VAR_OP_SET, BATTLER_ATTACKER, 0x2, VAR_09
    printmessage 0x3F1, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
