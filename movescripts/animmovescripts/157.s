.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_157", 0

a010_157:
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
    loadparticle 0, 178
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    addparticle 0, 0, 20
    addparticle 0, 1, 20
    addparticle 0, 2, 20
    wait 10
    repeatse 1972, 117, 1, 20
    wait 5
    callfunction 36, 5, 2, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 10, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    end

.close
