.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_056", 0

a001_056:
    changevar2 VAR_OP_SET, VAR_MOVE_BACKUP, 0x18
    random 3, 3
    changevar VAR_OP_LSH, VAR_09, 0x4
    changevartomonvalue2 VAR_OP_SETMASK, BATTLER_ATTACKER, 0x35, VAR_09
    changevar2 VAR_OP_TO_BIT, VAR_09, 0xF
    changevar VAR_OP_LSH, VAR_09, 0x8
    changevar2 VAR_OP_SETMASK, VAR_FIELD_EFFECT, 0x9
    printmessage 0x134, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript

.close
