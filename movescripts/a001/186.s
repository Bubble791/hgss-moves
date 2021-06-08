.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_186", 0

a001_186:
    wait 0xF
    changevar VAR_OP_SET, VAR_39, 0x0
    changevar2 VAR_OP_SET, VAR_ITEM_TEMP, 0xF
    changevar2 VAR_OP_SET, VAR_ATTACKER, 0x14
_0038:
    orderbattlersbyspeed 0x11
    checkbattlersequal BATTLER_ATTACKER, BATTLER_ADDL_EFFECT, _009C
    checknostatus BATTLER_ADDL_EFFECT, _009C
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, 0x2F, 0x0, _009C
    changevar VAR_OP_SET, VAR_34, 0x16
    changevar VAR_OP_SET, VAR_05, 0x3
    gotosubscript 12
_009C:
    changevar VAR_OP_ADD, VAR_39, 0x1
    exitloopatvalue 0x27, _0038
    changevar2 VAR_OP_SET, VAR_ATTACKER, 0x1D
    endscript

.close
