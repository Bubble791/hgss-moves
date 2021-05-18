// physical/special split

SPLIT_PHYSICAL equ 0
SPLIT_SPECIAL  equ 1
SPLIT_STATUS   equ 2

// move types

TYPE_NORMAL           equ 0
TYPE_FIGHTING         equ 1
TYPE_FLYING           equ 2
TYPE_POISON           equ 3
TYPE_GROUND           equ 4
TYPE_ROCK             equ 5
TYPE_BUG              equ 6
TYPE_GHOST            equ 7
TYPE_STEEL            equ 8
TYPE_MYSTERY          equ 9
TYPE_FIRE             equ 10
TYPE_WATER            equ 11
TYPE_GRASS            equ 12
TYPE_ELECTRIC         equ 13
TYPE_PSYCHIC          equ 14
TYPE_ICE              equ 15
TYPE_DRAGON           equ 16
TYPE_DARK             equ 17

// contest types

CONTEST_COOL      equ 0
CONTEST_BEAUTY    equ 1
CONTEST_CUTE      equ 2
CONTEST_SMART     equ 3
CONTEST_TOUGH     equ 4

// move data access constants (for load_attack_field_from_narc)

MOVEDATA_BATTLE_EFFECT equ 0
MOVEDATA_PSS           equ 1
MOVEDATA_BASE_POWER    equ 2
MOVEDATA_TYPE          equ 3
MOVEDATA_ACCURACY      equ 4
MOVEDATA_PP            equ 5
MOVEDATA_EFFECT_CHANCE equ 6
MOVEDATA_TARGET        equ 7
MOVEDATA_PRIORITY      equ 8
MOVEDATA_FLAGS         equ 9
MOVEDATA_APPEAL        equ 10
MOVEDATA_CONTEST_TYPE  equ 11
