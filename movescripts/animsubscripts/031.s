.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a061\a061_31", 0

a061_31:
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 0, 0, 0, 0
    changebg 24, 0x1
    waitforchangebg2
    callfunction 76, 1, 130, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitforchangebg
    wait 45
    callfunction 26, 1, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    repeatse 2009, -117, 2, 4
    wait 15
    callfunction 36, 5, 2, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 15
    enablemonsprite 0, 0x0
    wait 30
    resetbg 24, 0x1
    waitstate
    waitforchangebg
    resetsprite 0
    unloadspriteresource
    end

.close
