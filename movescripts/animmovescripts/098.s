.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_098", 0

a010_098:
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
    loadparticle 0, 128
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    playsepan 1983, -117
    loadspritemaybe 0, 0, 0, 0
    loadspritemaybe 0, 0, 1, 1
    loadspriteresource 4
    loadspritemaybe 2, 0, 4, 4
    cmd52 2, 0, 4
    callfunction 8, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 15
    playsepan 1827, 117
    resetsprite 0
    resetsprite 1
    unloadspriteresource
    cmd53 0
    resetsprite 4
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    callfunction 36, 5, 2, 0, 1, 1, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end

.close
