.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_117", 0

a010_117:
    checkturn _0010, _0144
    end
_0010:
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
    loadparticle 0, 144
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    repeatse 1927, -117, 3, 4
    addparticle 0, 0, 3
    callfunction 36, 5, 1, 0, 1, 4, 258, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 2, 0, 1, 31, 10, 0, "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0
    end
_0144:
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
    loadparticle 0, 52
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    callfunction 57, 4, 2, 14, 4, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 57, 4, 2, -14, -4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 57, 4, 2, -14, -4, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 4, 14, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1920, 117
    waitparticle
    unloadparticle 0
    end

.close
