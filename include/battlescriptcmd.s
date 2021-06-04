.macro startencounter
    .word 0x0
.endmacro

// battler values

BATTLER_ALL              equ 0x00
BATTLER_ATTACKER         equ 0x01
BATTLER_DEFENDER         equ 0x02
BATTLER_PLAYER           equ 0x03
BATTLER_OPPONENT         equ 0x04
BATTLER_FAINTED          equ 0x05
BATTLER_REPLACE          equ 0x06
BATTLER_ADDL_EFFECT      equ 0x07
BATTLER_CHAR_CHECKED     equ 0x08
BATTLER_PLAYER_LEFT      equ 0x09
BATTLER_ENEMY_LEFT       equ 0x0a
BATTLER_PLAYER_RIGHT     equ 0x0b
BATTLER_PLAYER_LEFT      equ 0x0c
BATTLER_ATTACKER2        equ 0x0e
BATTLER_DEFENDER2        equ 0x0f
BATTLER_ATTACKER_PARTNER equ 0x10
BATTLER_DEFENDER_PARTNER equ 0x11
BATTLER_WHIRLWINDED      equ 0x12
BATTLER_x13              equ 0x13
BATTLER_x14              equ 0x14
BATTLER_x15              equ 0x15
BATTLER_ALL_REPLACED     equ 0x16
BATTLER_xFF              equ 0xFF

.macro pokemonencounter,battler
    .word 0x1, battler
.endmacro

.macro pokemonslidein,battler
    .word 0x2, battler
.endmacro

.macro pokemonappear,battler
    .word 0x3, battler
.endmacro

.macro returnpokemon,battler
    .word 0x4, battler
.endmacro

.macro deletepokemon,battler
    .word 0x5, battler
.endmacro

.macro starttrainerencounter,battler
    .word 0x6, battler
.endmacro

.macro throwpokeball,battler,type
    .word 0x7, battler, type
.endmacro

.macro preparetrainerslide,battler
    .word 0x8, battler
.endmacro

.macro trainerslidein,battler,pos
    .word 0x9, battler, pos
.endmacro

.macro backgroundslidein
    .word 0xA
.endmacro

.macro hpgaugeslidein,battler
    .word 0xB, battler
.endmacro

.macro hpgaugeslidewait,battler
    .word 0xC, battler
.endmacro

.macro preparehpgaugeslide,battler
    .word 0xD, battler
.endmacro

.macro waitmessage
    .word 0xE
.endmacro

.macro damagecalc
    .word 0xF
.endmacro

.macro damagecalc2
    .word 0x10
.endmacro

.macro printattackmessage
    .word 0x11
.endmacro

.macro printmessage,msgid,tag,num1,num2,num3,num4,num5,num6
    .word 0x12, msgid, tag
    .if tag == 0
    .elseif tag < 9
        .word num1
    .elseif tag < 31
        .word num1, num2
    .elseif tag < 52
        .word num1, num2, num3
    .elseif tag < 60
        .word num1, num2, num3, num4
    .else
        .word num1, num2, num3, num4, num5, num6
    .endif
.endmacro

.macro printmessage2,msgid,tag,num1,num2,num3,num4,num5,num6
    .word 0x13, msgid, tag
    .if tag == 0
    .elseif tag < 9
        .word num1
    .elseif tag < 31
        .word num1, num2
    .elseif tag < 52
        .word num1, num2, num3
    .elseif tag < 60
        .word num1, num2, num3, num4
    .else
        .word num1, num2, num3, num4, num5, num6
    .endif
.endmacro

.macro printpreparedmessage
    .word 0x14
.endmacro

.macro preparemessage,msgid,tag,num1,num2,num3,num4,num5,num6
    .word 0x15, msgid, tag
    .if tag == 0
    .elseif tag < 9
        .word num1
    .elseif tag < 31
        .word num1, num2
    .elseif tag < 52
        .word num1, num2, num3
    .elseif tag < 60
        .word num1, num2, num3, num4
    .else
        .word num1, num2, num3, num4, num5, num6
    .endif
.endmacro

.macro printmessagepassbattler,battler,msgid,tag,num1,num2,num3,num4,num5,num6
    .word 0x16, battler, msgid, tag
    .if tag == 0
    .elseif tag < 9
        .word num1
    .elseif tag < 31
        .word num1, num2
    .elseif tag < 52
        .word num1, num2, num3
    .elseif tag < 60
        .word num1, num2, num3, num4
    .else
        .word num1, num2, num3, num4, num5, num6
    .endif
.endmacro

.macro seteffectprimary,battler
    .word 0x17, battler
.endmacro

.macro seteffectsecondary,battler,attacker,defender
    .word 0x18, battler, attacker, defender
.endmacro

.macro monflicker,battler
    .word 0x19, battler
.endmacro

.macro datahpupdate,battler
    .word 0x1A, battler
.endmacro

.macro healthbarupdate,battler
    .word 0x1B, battler
.endmacro

.macro tryfaintmon,battler
    .word 0x1C
.endmacro

.macro dofaintanimation
    .word 0x1D
.endmacro

.macro wait,time
    .word 0x1E, time
.endmacro

.macro playse,battler,soundid
    .word 0x1F, battler, soundid
.endmacro

// if condition operator

IF_EQUAL    equ 0 // equal
IF_NOTEQUAL equ 1 // not equal
IF_GREATER  equ 2 // greater than
IF_LESSTHAN equ 3 // less than
IF_MASK     equ 4 // mask on
IF_NOTMASK  equ 5 // mask off
IF_AND      equ 6 // exact and

.macro if,condition,source,comparator,address
    .word 0x20, condition, source, comparator, ((address - org()) / 4) - 1
.endmacro

.macro ifmonstat,condition,battler,source,comparator,address
    .word 0x21, condition, battler, source, comparator, ((address - org()) / 4) - 1
.endmacro

.macro fadeout
    .word 0x22
.endmacro

.macro jumptosubseq,num
    .word 0x23, num
.endmacro

.macro jumptocurmovescript
    .word 0x24
.endmacro

.macro jumptocurmovescript2,num
    .word 0x25, num
.endmacro

.macro critcalc
    .word 0x26
.endmacro

.macro shouldgetexp,address
    .word 0x27, ((address - org()) / 4) - 1
.endmacro

.macro initexpget
    .word 0x28
.endmacro

.macro getexp
    .word 0x29
.endmacro

.macro getexploop,address
    .word 0x2A, ((address - org()) / 4) - 1
.endmacro

.macro showmonlist
    .word 0x2B
.endmacro

.macro waitformonselection
    .word 0x2C
.endmacro

.macro switchindataupdate,battler
    .word 0x2D, battler
.endmacro

.macro jumpifcantswitch,address // maybe?
    .word 0x2E, ((address - org()) / 4) - 1
.endmacro

.macro initcapture, num
    .word 0x2F, num
.endmacro

.macro capturemon
    .word 0x30
.endmacro

.macro setmultihit,hits,num
    .word 0x31, hits, num
.endmacro

// changevar operators:

VAR_SET         equ 7
VAR_ADD         equ 8
VAR_SUB         equ 9
VAR_SETMASK     equ 10
VAR_CLEARMASK   equ 11
VAR_MUL         equ 12
VAR_DIV         equ 13
VAR_LSH         equ 14
VAR_RSH         equ 15
VAR_TO_BIT      equ 16
VAR_GET_RESULT  equ 17
VAR_SUB_TO_ZERO equ 18
VAR_XOR         equ 19
VAR_AND         equ 20

.macro changevar,operator,var,value
    .word 0x32, operator, var, value
.endmacro

.macro statbuffchange,address1,address2,address3 // all failure addresses
    .word 0x33, ((address1 - org()) / 4) - 3, ((address2 - org()) / 4) - 2, ((address3 - org()) / 4) - 1
.endmacro

.macro changevartomonvalue,operator,battler,var,value
    .word 0x34, operator, battler, value, value
.endmacro

.macro clearstatus2,battler,value
    .word 0x35, battler, value
.endmacro

.macro togglevanish,battler,num
    .word 0x36, battler, num
.endmacro

.macro abilitycheck,num,battler,ability,address
    .word 0x37, num, battler, ability, ((address - org()) / 4) - 1
.endmacro

.macro random,range,startingnum // random number from startingnum to startingnum+range
    .word 0x38, range, startingnum
.endmacro

.macro changevar2,operator,var,value
    .word 0x39, operator, var, value
.endmacro

.macro changevartomonvalue,operator,battler,var,value
    .word 0x3A, operator, battler, value, value
.endmacro

.macro goto,address
    .word 0x3B, ((address - org()) / 4) - 1
.endmacro

.macro gotosubscript,num
    .word 0x3C, num
.endmacro

.macro gotosubscript2,num
    .word 0x3D, num

.macro checkifchatot // i think it is this
    .word 0x3E
.endmacro

.macro sethaze
    .word 0x3F
.endmacro

.macro setsomeflag,battler
    .word 0x40, battler
.endmacro

.macro clearsomeflag,battler
    .word 0x41, battler
.endmacro

.macro setstatusicon,battler,status
    .word 0x42, battler, status
.endmacro

.macro trainermessage,battler,type
    .word 0x43, battler, type
.endmacro

.macro calcmoney
    .word 0x44
.endmacro

.macro setstatus2effect,battler,status
    .word 0x45, battler, type
.endmacro

.macro setstatus2effect2,battler1,battler2,status
    .word 0x46, battler1, battler2, status
.endmacro

.macro setstatus2effect3,battler,status
    .word 0x47, battler, status
.endmacro

.macro returnmessage,battler
    .word 0x48, battler
.endmacro

.macro sentoutmessage,battler
    .word 0x49, battler
.endmacro

.macro encountermessage,battler
    .word 0x4A, battler
.endmacro

.macro encountermessage2,battler
    .word 0x4B, battler
.endmacro

.macro trainermessage2,battler
    .word 0x4C, battler
.endmacro

.macro tryconversion,address
    .word 0x4D, ((address - org()) / 4) - 1
.endmacro

.macro if2,condition,source,comparator,address
    .word 0x4E, condition, source, comparator, ((address - org()) / 4) - 1
.endmacro

.macro ifmonstat2,condition,battler,source,comparator,address
    .word 0x4F, condition, battler, source, comparator, ((address - org()) / 4) - 1
.endmacro

.macro cmd_50_somecheck
    .word 0x50
.endmacro

.macro setlightscreen, address
    .word 0x51, ((address - org()) / 4) - 1
.endmacro

.macro setreflect, address
    .word 0x52, ((address - org()) / 4) - 1
.endmacro

.macro setmist, address
    .word 0x53, ((address - org()) / 4) - 1
.endmacro

.macro tryonehitko
    .word 0x54
.endmacro

.macro damagediv, denominator, value
    .word 0x55, denominator, value
.endmacro

.macro damagediv2, denominator, value
    .word 0x56, denominator, value
.endmacro

.macro trymimic, address
    .word 0x57, ((address - org()) / 4) - 1
.endmacro

.macro metronome
    .word 0x58
.endmacro

.macro trydisable,address
    .word 0x59, ((address - org()) / 4) - 1
.endmacro

.macro counter
    .word 0x5A
.endmacro

.macro mirrorcoat
    .word 0x5B
.endmacro

.macro tryencore,address
    .word 0x5C, ((address - org()) / 4) - 1
.endmacro

.macro tryconversion2,address
    .word 0x5D, ((address - org()) / 4) - 1
.endmacro

.macro trysketch,address
    .word 0x5E, ((address - org()) / 4) - 1
.endmacro

.macro trysleeptalk,address
    .word 0x5F, ((address - org()) / 4) - 1
.endmacro

.macro flaildamagecalc
    .word 0x60
.endmacro

.macro tryspite,address
    .word 0x61, ((address - org()) / 4) - 1
.endmacro

.macro healbell
    .word 0x62
.endmacro

.macro trythief,address1,address2
    .word 0x63, ((address1 - org()) / 4) - 2, ((address2 - org()) / 4) - 1
.endmacro

.macro willprotectwork,address
    .word 0x64, ((address - org()) / 4) - 1
.endmacro

.macro trysubstitute,address
    .word 0x65, ((address - org()) / 4) - 1
.endmacro

.macro trywhirlwind,address
    .word 0x66, ((address - org()) / 4) - 1
.endmacro

.macro transform
    .word 0x67, ((address - org()) / 4) - 1
.endmacro

.macro tryspikes,address
    .word 0x68, ((address - org()) / 4) - 1
.endmacro

.macro checkspikes,battler,address
    .word 0x69, battler, ((address - org()) / 4) - 1
.endmacro

.macro tryperishsong,address
    .word 0x6A, ((address - org()) / 4) - 1
.endmacro

.macro orderbattlersbyspeed,value
    .word 0x6B, value
.endmacro

.macro exitloopatvalue,value,address // something like that
    .word 0x6C, value, ((address - org()) / 4) - 1
.endmacro

.macro weatherdamagecalc, battler
    .word 0x6D, battler
.endmacro

.macro rolloutdamagecalc
    .word 0x6E
.endmacro

.macro furycutterdamagecalc
    .word 0x6F
.endmacro

.macro tryattract,address
    .word 0x70, ((address - org()) / 4) - 1
.endmacro

.macro trysafeguard,address
    .word 0x71, ((address - org()) / 4) - 1
.endmacro

.macro trypresent,address
    .word 0x72, ((address - org()) / 4) - 1
.endmacro

.macro magnitudedamagecalc
    .word 0x73
.endmacro

.macro tryswitchinmon,battler,num,address
    .word 0x74, battler, num, ((address - org()) / 4) - 1
.endmacro

.macro dorapidspineffect
    .word 0x75
.endmacro

.macro changehprecoverybasedonweather
    .word 0x76
.endmacro

.macro hiddenpowerdamagecalc
    .word 0x77
.endmacro

.macro dopsychup
    .word 0x78
.endmacro

.macro dofuturesight,address
    .word 0x79, ((address - org()) / 4) - 1
.endmacro

.macro checkhitrate, attacker, defender, move, address
    .word 0x7A, attacker, defender, move, ((address - org()) / 4) - 1
.endmacro

.macro tryteleport, address
    .word 0x7B, ((address - org()) / 4) - 1
.endmacro

.macro beatupdamagecalc
    .word 0x7C
.endmacro

.macro dofollowme
    .word 0x7D
.endmacro

.macro tryhelpinghand,address
    .word 0x7E, ((address - org()) / 4) - 1
.endmacro

.macro trytrick,address1,address2
    .word 0x7F, ((address1 - org()) / 4) - 2, ((address2 - org()) / 4) - 1
.endmacro

.macro trywish,address
    .word 0x80, ((address - org()) / 4) - 1
.endmacro

.macro tryassist,address
    .word 0x81, ((address - org()) / 4) - 1
.endmacro

.macro trymagiccoat,address
    .word 0x82, ((address - org()) / 4) - 1
.endmacro

.macro trymagiccoat2
    .word 0x83
.endmacro

.macro dorevenge
    .word 0x84
.endmacro

.macro trybreakscreens,address
    .word 0x85, ((address - org()) / 4) - 1
.endmacro

.macro tryyawn,address
    .word 0x86, ((address - org()) / 4) - 1
.endmacro

.macro tryknockitemoff,address
    .word 0x87, ((address - org()) / 4) - 1
.endmacro

.macro eruptiondamagecalc
    .word 0x88
.endmacro

.macro tryimprison,address
    .word 0x89, ((address - org()) / 4) - 1
.endmacro

.macro trygrudge,address
    .word 0x8A, ((address - org()) / 4) - 1
.endmacro

.macro trysnatch,address
    .word 0x8B, ((address - org()) / 4) - 1
.endmacro

.macro lowkickdamagecalc
    .word 0x8C
.endmacro

.macro weatherballdamagecalc
    .word 0x8D
.endmacro

.macro trypursuit,address // maybe?
    .word 0x8E, ((address - org()) / 4) - 1
.endmacro

.macro typecheck
    .word 0x8F
.endmacro

.macro checkoneturnflag,battler,flag,value,address
    .word 0x90, battler, flag, value, ((address - org()) / 4) - 1
.endmacro

.macro setoneturnflag,battler,flag,value
    .word 0x91, battler, flag, value
.endmacro

.macro gyroballdamagecalc
    .word 0x92
.endmacro

.macro metalburstdamagecalc,address
    .word 0x93, ((address - org()) / 4) - 1
.endmacro

.macro paybackdamagecalc
    .word 0x94
.endmacro

.macro trumpcarddamagecalc
    .word 0x95
.endmacro

.macro wringoutdamagecalc
    .word 0x96
.endmacro

.macro trymefirst,address
    .word 0x97, ((address - org()) / 4) - 1
.endmacro

.macro trycopycat,address
    .word 0x98, ((address - org()) / 4) - 1
.endmacro

.macro punishmentdamagecalc
    .word 0x99
.endmacro

.macro trysuckerpunch,address
    .word 0x9A, ((address - org()) / 4) - 1
.endmacro

.macro checkbattlercondition,battler,mode,num,address
    .word 0x9B, battler, mode, num, ((address - org()) / 4) - 1
.endmacro

.macro tryfeint,address
    .word 0x9C, ((address - org()) / 4) - 1
.endmacro

.macro trypsychoshift,address
    .word 0x9D, ((address - org()) / 4) - 1
.endmacro

.macro trylastresort,address
    .word 0x9E, ((address - org()) / 4) - 1
.endmacro

.macro trytoxicspikes,address
    .word 0x9F, ((address - org()) / 4) - 1
.endmacro

.macro checktoxicspikes,address
    .word 0xA0, ((address - org()) / 4) - 1
.endmacro

.macro moldbreakerabilitycheck,num,battler,ability,address
    .word 0xA1, num, battler, ability, ((address - org()) / 4) - 1
.endmacro

.macro checkside,compare1,compare2,address
    .word 0xA2, compare1, compare2, ((address - org()) / 4) - 1
.endmacro
 
.macro trypickup
    .word 0xA3
.endmacro

.macro dotrickroom
    .word 0xA4
.endmacro

.macro checkmovefinished,battler,address
    .word 0xA5, battler, ((address - org()) / 4) - 1
.endmacro

.macro checkitemeffect,num,battler,effect,address
    .word 0xA6, num, battler, effect, ((address - org()) / 4) - 1
.endmacro

.macro getitemeffect,battler,num
    .word 0xA7, battler, num
.endmacro

.macro getitempower,battler,num
    .word 0xA8, battler, num
.endmacro

.macro trycamouflage,address
    .word 0xA9, ((address - org()) / 4) - 1
.endmacro

.macro donaturepower
    .word 0xAA
.endmacro

.macro dosecretpower
    .word 0xAB
.endmacro

.macro trynaturalgift,address
    .word 0xAC, ((address - org()) / 4) - 1
.endmacro

.macro trypluck,address1,address2
    .word 0xAD, ((address1 - org()) / 4) - 2, ((address2 - org()) / 4) - 1
.endmacro

.macro tryfling,address
    .word 0xAE, ((address - org()) / 4) - 1
.endmacro

.macro yesnobox,num
    .word 0xAF, num
.endmacro

.macro yesnowait,address1,address2
    .word 0xB0, ((address1 - org()) / 4) - 2, ((address2 - org()) / 4) - 1
.endmacro

.macro monlist
    .word 0xB1
.endmacro

.macro monlistwait
    .word 0xB2
.endmacro

.macro setbattleresult
    .word 0xB3
.endmacro

.macro checkstealthrock,battler,address
    .word 0xB4, battler, ((address - org()) / 4) - 1
.endmacro

.macro checkeffectactivation,address
    .word 0xB5, ((address - org()) / 4) - 1
.endmacro

.macro checkchatteractivation,address
    .word 0xB6, ((address - org()) / 4) - 1
.endmacro

.macro getmoveparameter,field
    .word 0xB7, field
.endmacro

.macro mosaic,battler,num,wait
    .word 0xB8, battler, num, wait
.endmacro

.macro changeform,battler
    .word 0xB9, battler
.endmacro

.macro changebackground
    .word 0xBA
.endmacro

.macro recoverstatus,battler
    .word 0xBB, battler
.endmacro

.macro tryescape,battler,address
    .word 0xBC, battler, ((address - org()) / 4) - 1
.endmacro

.macro initstartballguage,battler
    .word 0xBD, battler
.endmacro

.macro deletestartballguage,battler
    .word 0xBE, battler
.endmacro

.macro initballguage,battler
    .word 0xBF, battler
.endmacro

.macro deleteballguage,battler
    .word 0xC0, battler
.endmacro

.macro loadballgfx
    .word 0xC1
.endmacro

.macro deleteballgfx
    .word 0xC2
.endmacro

.macro incrementgamestat,battler,num,id // i think
    .word 0xC3, battler, num, id
.endmacro

.macro cmd_C4,battler
    .word 0xC4, battler
.endmacro

.macro checkifcurrentmovehits,address // i think
    .word 0xC5, ((address - org()) / 4) - 1
.endmacro

.macro cmd_C6,battler // something to do with sprites
    .word 0xC6, battler
.endmacro

.macro cmd_C7,battler // something to do with sprites
    .word 0xC7, battler
.endmacro

.macro checkwipeout,battler,address
    .word 0xC8, battler, ((address - org()) / 4) - 1
.endmacro

.macro tryacupressure,address
    .word 0xC9, ((address - org()) / 4) - 1
.endmacro

.macro removeitem,battler
    .word 0xCA, battler
.endmacro

.macro tryrecycle,address
    .word 0xCB, ((address - org()) / 4) - 1
.endmacro

.macro itemeffectcheckonhit,address
    .word 0xCC, ((address - org()) / 4) - 1
.endmacro

.macro battleresultmessage // during online battles
    .word 0xCD
.endmacro

.macro runawaymessage // during online battles
    .word 0xCE
.endmacro

.macro giveupmessage // during online battles
    .word 0xCF
.endmacro

.macro cmd_D0_checkhpsomething,battler
    .word 0xD0, battler
.endmacro

.macro trynaturalcure,battler,address
    .word 0xD1, battler, ((address - org()) / 4) - 1
.endmacro

.macro checknostatus,battler,address
    .word 0xD2, battler, ((address - org()) / 4) - 1

.macro checkcloudnine,address
    .word 0xD3, ((address - org()) / 4) - 1
.endmacro

.macro cmd_D4,battler
    .word 0xD4, battler
.endmacro

.macro checkwhenitemmakesmovehit,address
    .word 0xD5, ((address - org()) / 4) - 1
.endmacro

.macro cmd_D6,battler
    .word 0xD6, battler
.endmacro

.macro playmovesoundeffect,battler
    .word 0xD7, battler
.endmacro

.macro playsong,battler,num
    .word 0xD8, battler, num
.endmacro

.macro checkifsafariencounterdone,address
    .word 0xD9, ((address - org()) / 4) - 1
.endmacro

.macro waitwithoutbuttonpress,time
    .word 0xDA, time
.endmacro

.macro checkmovetypematches,type,address
    .word 0xDB, type, ((address - org()) / 4) - 1
.endmacro

.macro getdatafrompersonalnarc,monnum,formnum,num
    .word 0xDC, monnum, formnum, num
.endmacro

.macro refreshmondata,battler
    .word 0xDD, battler
.endmacro

.macro cmd_DE,num1,num2
    .word 0xDE, num1, num2
.endmacro

.macro cmd_DF,num
    .word 0xDF, num
.endmacro

.macro endscript
    .word 0xE0
.endmacro

