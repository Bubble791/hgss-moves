.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_242", 0

a010_242:
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspriteresource 3
    loadspritemaybe 4, 0, 0, 0
    loadspritemaybe 5, 0, 1, 1
    loadspritemaybe 6, 0, 2, 2
    loadspritemaybe 7, 0, 3, 3
    callfunction 78, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loadparticle 0, 260
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 16, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 4
    addparticle 0, 3, 4
    addparticle 0, 4, 4
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    wait 10
    playsepan 1934, 117
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitse 1972, 117, 4
    wait 10
    callfunction 33, 5, 0, 1, 16, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
