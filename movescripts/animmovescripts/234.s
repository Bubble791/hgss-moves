.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_234", 0

a010_234:
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
    loadparticle 0, 252
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    callfunction 33, 5, 0, 1, 0, 12, 26623, "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 0
    addparticle 0, 1, 0
    addparticle 0, 2, 0
    playsepan 2041, 0
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 26623, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close
