emitter_attack_pos equ 3
emitter_defence_pos equ 4


.macro wait,time
    .word 0x0, time
.endmacro

.macro waitstate
    .word 0x1
.endmacro

.macro loop,value
    .word 0x2, value
.endmacro

.macro doloop
    .word 0x3
.endmacro

.macro end
    .word 0x4
.endmacro

.macro playse,value
    .word 0x5, value
.endmacro

.macro changemonbg,value
    .word 0x6, value
.endmacro

.macro resetmonbg,value
    .word 0x7, value
.endmacro

.macro cmd08
    .word 0x8
.endmacro

.macro cmd09
    .word 0x9
.endmacro

.macro call,address
    .word 0xA
    .word (address - .) / 4
.endmacro

.macro return
    .word 0xB
.endmacro

.macro cmd0C,num0,num1
    .word 0xC, num0, num1
.endmacro

.macro checkturn,address1,address2
    .word 0xD
    .word (address1 - .) / 4
    .word (address2 - .) / 4
.endmacro

.macro cmd0E
    .word 0xE
.endmacro

.macro cmd0F
    .word 0xF
.endmacro

.macro changebg,value1,value2
    .word 0x10, value1, value2
.endmacro

.macro changebgparam,value1,value2
    .word 0x11, value1, value2
.endmacro

.macro resetbg,value1,value2
    .word 0x12, value1, value2
.endmacro

.macro waitforchangebg2
    .word 0x13
.endmacro

.macro waitforchangebg
    .word 0x14
.endmacro

.macro cmd15
    .word 0x15
.endmacro

// constants for panning

PAN_LEFT equ -128
PAN_RIGHT equ 127
PAN_CENTER equ 0

.macro playsepan,id,pan
    .word 0x16, id, pan
.endmacro

.macro cmd17
    .word 0x17
.endmacro

.macro playsepanmod,id,panstart,panend,panadd,time
    .word 0x18, id, panstart, panend, panadd, time
.endmacro

.macro repeatse,id,pan,num1,num2
    .word 0x19, id, pan, num1, num2
.endmacro

.macro waitse,id,pan,num
    .word 0x1A, id, pan, num
.endmacro

.macro cmd1B
    .word 0x1B
.endmacro

.macro cmd1C
    .word 0x1C
.endmacro

.macro cmd1D
    .word 0x1D
.endmacro

.macro cmd1E
    .word 0x1E
.endmacro

.macro cmd1F,num0,num1
    .word 0x1F, num0, num1
.endmacro

.macro cmd20,num
    .word 0x20, num
.endmacro

.macro cmd21
    .word 0x21
.endmacro

.macro cmd22
    .word 0x22
.endmacro

.macro cmd23
    .word 0x23
.endmacro

.macro cmd24
    .word 0x24
.endmacro

.macro cmd25
    .word 0x25
.endmacro

.macro cmd26
    .word 0x26
.endmacro

.macro cmd27
    .word 0x27
.endmacro

.macro cmd28
    .word 0x28
.endmacro

.macro cmd29
    .word 0x29
.endmacro

.macro cmd2A
    .word 0x2A
.endmacro

.macro cmd2B
    .word 0x2B
.endmacro

.macro stopse,id
    .word 0x2C, id
.endmacro

.macro callfunction,func,count,num0,num1,num2,num3,num4,num5,num6,num7,num8,num9
    .word 0x2D, func, count
	.if count > 0
		.word num0
	.endif
	.if count > 1
		.word num1
	.endif
	.if count > 2
		.word num2
	.endif
	.if count > 3
		.word num3
	.endif
	.if count > 4
		.word num4
	.endif
	.if count > 5
		.word num5
	.endif
	.if count > 6
		.word num6
	.endif
	.if count > 7
		.word num7
	.endif
	.if count > 8
		.word num8
	.endif
	.if count > 9
		.word num9
	.endif
.endmacro

.macro addparticle,num0,num1,address
    .word 0x2E, num0, num1, address
.endmacro

.macro addparticle2,num0,num1,num2,address
    .word 0x2F, num0, num1, num2, address
.endmacro

.macro addsequentialparticle,num0,num1,num2,num3,num4,num5,num6,address
    .word 0x30, num0, num1, num2, num3, num4, num5, num6, address
.endmacro

.macro addparticlebasedonbattler,num0,num1,num2,num3,num4,address
    .word 0x31, num0, num1, num2, num3, num4, address
.endmacro

.macro waitparticle
    .word 0x32
.endmacro

.macro loadparticle,num0,num1
    .word 0x33, num0, num1
.endmacro

.macro cmd34
    .word 0x34
.endmacro

.macro unloadparticle,num
    .word 0x35, num
.endmacro

.macro cmd36,function,num0,num1,count,param0,param1,param2,param3,param4,param5,param6,param7
    .word 0x36, function, num0, num1, count
	.if count > 0
		.word param0
	.endif
	.if count > 1
		.word param1
	.endif
	.if count > 2
		.word param2
	.endif
	.if count > 3
		.word param3
	.endif
	.if count > 4
		.word param4
	.endif
	.if count > 5
		.word param5
	.endif
	.if count > 6
		.word param6
	.endif
	.if count > 7
		.word param7
	.endif
.endmacro

.macro cmd37,count,param0,param1,param2,param3,param4,param5,param6,param7
    .word 0x37, count
	.if count > 0
		.word param0
	.endif
	.if count > 1
		.word param1
	.endif
	.if count > 2
		.word param2
	.endif
	.if count > 3
		.word param3
	.endif
	.if count > 4
		.word param4
	.endif
	.if count > 5
		.word param5
	.endif
	.if count > 6
		.word param6
	.endif
	.if count > 7
		.word param7
	.endif
.endmacro

.macro initspriteresource
    .word 0x38
.endmacro

.macro loadspriteresource,num
    .word 0x39, num
.endmacro

.macro loadspritemaybe,num0,num1,num2,num3
    .word 0x3A, num0, num1, num2, num3
.endmacro

.macro unloadspriteresource
    .word 0x3B
.endmacro

.macro resetsprite,num
    .word 0x3C, num
.endmacro

.macro cmd3D
    .word 0x3D
.endmacro

.macro cmd3E,num0,num1
    .word 0x3E, num0, num1
.endmacro

.macro cmd3F
    .word 0x3F
.endmacro

.macro jumpifside,num,address1,address2
    .word 0x40
	.word num
	.word (address1 - .) / 4
	.word (address2 - .) / 4
.endmacro

.macro playcry,num,pan,volume
    .word 0x41, num, pan, volume
.endmacro

.macro waitcry,num
    .word 0x42, num
.endmacro

.macro cmd43
    .word 0x43
.endmacro

.macro transform,num
    .word 0x44, num
.endmacro

.macro copymonsprite,num
    .word 0x45, num
.endmacro

.macro jumpbasedonweather,address0,address1,address2,address3,address4
    .word 0x46
	.word (address0 - .) / 4
	.word (address1 - .) / 4
	.word (address2 - .) / 4
	.word (address3 - .) / 4
	.word (address4 - .) / 4
.endmacro

.macro jumpifcontest,address
    .word 0x47
	.word (address - .) / 4
.endmacro

.macro jumpifplayerattack,address
    .word 0x48
	.word (address - .) / 4
.endmacro

.macro initresources,num0,num1,num2,num3,num4,num5,num6,num7
    .word 0x49, num0, num1, num2, num3, num4, num5, num6, num7
.endmacro

.macro loadresources,num,file
    .word 0x4A, num, file
.endmacro

.macro loadpalette,num,file,pal
    .word 0x4B, num, file, pal
.endmacro

.macro loadcell,num,file
    .word 0x4C, num, file
.endmacro

.macro loadcellanm,num,file
    .word 0x4D, num, file
.endmacro

.macro addsomething,num0,num1,num2,num3,num4,num5,num6,num7,count,param0,param1,param2,param3,param4,param5,param6,param7
    .word 0x4E, num0, num1, num2, num3, num4, num5, num6, num7, count
	.if count > 0
		.word param0
	.endif
	.if count > 1
		.word param1
	.endif
	.if count > 2
		.word param2
	.endif
	.if count > 3
		.word param3
	.endif
	.if count > 4
		.word param4
	.endif
	.if count > 5
		.word param5
	.endif
	.if count > 6
		.word param6
	.endif
	.if count > 7
		.word param7
	.endif
.endmacro

.macro addsomething2,num0,num1,num2,num3,num4,num5,num6,num7
    .word 0x4F, num0, num1, num2, num3, num4, num5, num6, num7
.endmacro

.macro freeresources,num
    .word 0x50, num
.endmacro

.macro enablemonsprite,num,value
    .word 0x51, num, value
.endmacro

.macro cmd52,num0,num1,num2
    .word 0x52, num0, num1, num2
.endmacro

.macro cmd53,num
    .word 0x53, num
.endmacro

.macro cmd54
    .word 0x54
.endmacro

.macro cmd55,num
	.word 0x55, num
.endmacro

.macro cmd56,num0,num1,num2
	.word 0x56, num0, num1, num2
.endmacro

.macro cmd57,num
	.word 0x57, num
.endmacro

.macro loadparticle_drop, ptc_no, data_no
	initspriteresource
	loadspriteresource 0
	loadspriteresource 1
	loadspriteresource 2
	loadspriteresource 3
	loadspritemaybe 4,0,0,0
	loadspritemaybe 5,0,1,1
	loadspritemaybe 6,0,2,2
	loadspritemaybe 7,0,3,3
	callfunction 0x4e, 1, 0,0,0,0,0,0,0,0,0,0
	loadparticle ptc_no, data_no
	waitstate
	unloadspriteresource
	resetsprite 0
	resetsprite 1
	resetsprite 2
	resetsprite 3
.endmacro