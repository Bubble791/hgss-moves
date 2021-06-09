.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_122", 0

a001_122:
    if IF_EQUAL, VAR_BATTLE_TYPE, 0x4A, _006C
    tryteleport _006C
    gotosubscript 76
    printmessage 0x1D5, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    fadeout
    waitmessage
    changevar VAR_OP_SETMASK, VAR_BATTLE_RESULT, 0x5
    incrementgamestat BATTLER_ATTACKER, 0x1, 0x64
    endscript
_006C:
    changevar VAR_OP_SETMASK, VAR_10, 0x40
    endscript

.close
