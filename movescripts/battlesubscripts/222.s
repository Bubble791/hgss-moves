.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_222", 0

a001_222:
    printmessage 0x4B6, 0x5, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatus2effect BATTLER_PLAYER, 0x11
    waitmessage
    playse BATTLER_ATTACKER, 0x6FF
    printmessage 0x30D, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    fadeout
    waitmessage
    changevar VAR_OP_SETMASK, VAR_BATTLE_RESULT, 0x5
    endscript

.close
