.nds
.thumb

.include "include/battlescriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a001\a001_109", 0

a001_109:
    trysafeguard _0010
    gotosubscript 53
_0010:
    endscript

.close
