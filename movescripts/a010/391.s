.nds
.thumb

.include "include/animscriptcmd.s"
.include "include/abilities.s"
.include "include/itemnums.s"
.include "include/monnums.s"
.include "include/movenums.s"

.create "a010\a010_391", 0

a010_391:
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
    loadparticle 0, 409
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
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
    loadparticle 1, 409
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    waitse 2015, 0, 1
    waitse 2015, 0, 15
    waitse 2015, 0, 30
    waitse 2015, 0, 45
    waitse 2015, 0, 60
    waitse 2015, 0, 75
    waitse 1896, 0, 86
    loop 3
    addparticle2 0, 0, 1, 3
    callfunction 66, 7, 0, 0, 0, 0, 12, 32, 1, "NaN", "NaN", "NaN"
    wait 3
    addparticle2 0, 1, 1, 3
    callfunction 66, 7, 1, 0, 0, 0, 12, 32, 1, "NaN", "NaN", "NaN"
    wait 3
    addparticle2 0, 2, 1, 3
    callfunction 66, 7, 2, 0, 0, 0, 12, 32, 1, "NaN", "NaN", "NaN"
    wait 3
    addparticle2 0, 3, 1, 3
    callfunction 66, 7, 3, 0, 0, 0, 12, 32, 1, "NaN", "NaN", "NaN"
    addparticle2 0, 4, 1, 3
    callfunction 66, 7, 4, 0, 0, 0, 12, -32, 0, "NaN", "NaN", "NaN"
    wait 3
    addparticle2 0, 5, 1, 3
    callfunction 66, 7, 5, 0, 0, 0, 12, -32, 0, "NaN", "NaN", "NaN"
    wait 3
    addparticle2 0, 6, 1, 3
    callfunction 66, 7, 6, 0, 0, 0, 12, -32, 0, "NaN", "NaN", "NaN"
    wait 3
    addparticle2 0, 7, 1, 3
    callfunction 66, 7, 7, 0, 0, 0, 12, -32, 0, "NaN", "NaN", "NaN"
    doloop
    addparticle 0, 2, 3
    addparticle 0, 3, 3
    addparticle 0, 0, 3
    addparticle 0, 2, 4
    addparticle 0, 3, 4
    addparticle 0, 0, 4
    callfunction 34, 6, 2, 0, 1, 23199, 10, 15, "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 23199, 10, 15, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    unloadparticle 1
    end

.close
