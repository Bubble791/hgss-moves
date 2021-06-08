.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_077", 0

a001_077:
    checknostatus BATTLER_DEFENDER, _0130
    gotosubscript 76
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2F, VAR_09
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x2F, VAR_HP_TEMP
    changevar2 VAR_OP_ADD, VAR_09, 0x20
    changevar VAR_OP_DIV, VAR_09, 0x2
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, 0xF
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x2F, VAR_HP_TEMP
    changevar2 VAR_OP_SUB, VAR_HP_TEMP, 0x9
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    gotosubscript 2
    changevar VAR_OP_SETMASK, VAR_06, 0x40
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, 0x10
    changevartomonvalue2 VAR_OP_GET_RESULT, BATTLER_DEFENDER, 0x2F, VAR_HP_TEMP
    changevar2 VAR_OP_SUB, VAR_HP_TEMP, 0x9
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    gotosubscript 2
    printmessage 0x334, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
_0130:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
