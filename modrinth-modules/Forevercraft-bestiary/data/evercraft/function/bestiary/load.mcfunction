# Bestiary System — Load / Init
# Registers all scoreboards and constants for the bestiary tracking system
# 52 mobs (hostile + neutral), alphabetically indexed 0-52 (index 21 reserved/unused)
# 11 world bosses on separate bitfield (bs.comp_wb / bs.hurt_wb, bits 0-10)

# === KILL COUNTERS (bs.k_*) ===
scoreboard objectives add bs.k_bee dummy
scoreboard objectives add bs.k_blaze dummy
scoreboard objectives add bs.k_bogged dummy
scoreboard objectives add bs.k_breeze dummy
scoreboard objectives add bs.k_camhusk dummy
scoreboard objectives add bs.k_cavespdr dummy
scoreboard objectives add bs.k_creaking dummy
scoreboard objectives add bs.k_creeper dummy
scoreboard objectives add bs.k_dolphin dummy
scoreboard objectives add bs.k_drowned dummy
scoreboard objectives add bs.k_e_guard dummy
scoreboard objectives add bs.k_enderman dummy
scoreboard objectives add bs.k_endmite dummy
scoreboard objectives add bs.k_edragon dummy
scoreboard objectives add bs.k_evoker dummy
scoreboard objectives add bs.k_fox dummy
scoreboard objectives add bs.k_ghast dummy
scoreboard objectives add bs.k_goat dummy
scoreboard objectives add bs.k_guardian dummy
scoreboard objectives add bs.k_hoglin dummy
scoreboard objectives add bs.k_husk dummy
# (index 21 / lo bit 21 reserved — illusioner removed)
scoreboard objectives add bs.k_ironglm dummy
scoreboard objectives add bs.k_llama dummy
scoreboard objectives add bs.k_magcube dummy
scoreboard objectives add bs.k_panda dummy
scoreboard objectives add bs.k_parched dummy
scoreboard objectives add bs.k_phantom dummy
scoreboard objectives add bs.k_piglin dummy
scoreboard objectives add bs.k_pigbrute dummy
scoreboard objectives add bs.k_pillager dummy
scoreboard objectives add bs.k_polarbr dummy
scoreboard objectives add bs.k_ravager dummy
scoreboard objectives add bs.k_shulker dummy
scoreboard objectives add bs.k_silvrfsh dummy
scoreboard objectives add bs.k_skeleton dummy
scoreboard objectives add bs.k_slime dummy
scoreboard objectives add bs.k_spider dummy
scoreboard objectives add bs.k_stray dummy
scoreboard objectives add bs.k_trllama dummy
scoreboard objectives add bs.k_vex dummy
scoreboard objectives add bs.k_vindctr dummy
scoreboard objectives add bs.k_warden dummy
scoreboard objectives add bs.k_witch dummy
scoreboard objectives add bs.k_wither dummy
scoreboard objectives add bs.k_withskel dummy
scoreboard objectives add bs.k_wolf dummy
scoreboard objectives add bs.k_zoglin dummy
scoreboard objectives add bs.k_zombie dummy
scoreboard objectives add bs.k_zombhrs dummy
scoreboard objectives add bs.k_znautls dummy
scoreboard objectives add bs.k_zombvill dummy
scoreboard objectives add bs.k_zombpig dummy

# === WORLD BOSS KILL COUNTERS (bs.k_*) ===
scoreboard objectives add bs.k_hollking dummy
scoreboard objectives add bs.k_verdwrdn dummy
scoreboard objectives add bs.k_stormfrg dummy
scoreboard objectives add bs.k_tidecllr dummy
scoreboard objectives add bs.k_erthshkr dummy
scoreboard objectives add bs.k_nightmre dummy
scoreboard objectives add bs.k_inftitan dummy
scoreboard objectives add bs.k_soulwrdn dummy
scoreboard objectives add bs.k_crimbhmt dummy
scoreboard objectives add bs.k_voidsovr dummy
scoreboard objectives add bs.k_endrarch dummy

# === DROP TIER BITFIELDS (bs.d_*) — bits: 1=common, 2=uncommon, 4=rare, 8=ornate, 16=exquisite, 32=mythical ===
scoreboard objectives add bs.d_bee dummy
scoreboard objectives add bs.d_blaze dummy
scoreboard objectives add bs.d_bogged dummy
scoreboard objectives add bs.d_breeze dummy
scoreboard objectives add bs.d_camhusk dummy
scoreboard objectives add bs.d_cavespdr dummy
scoreboard objectives add bs.d_creaking dummy
scoreboard objectives add bs.d_creeper dummy
scoreboard objectives add bs.d_dolphin dummy
scoreboard objectives add bs.d_drowned dummy
scoreboard objectives add bs.d_e_guard dummy
scoreboard objectives add bs.d_enderman dummy
scoreboard objectives add bs.d_endmite dummy
scoreboard objectives add bs.d_edragon dummy
scoreboard objectives add bs.d_evoker dummy
scoreboard objectives add bs.d_fox dummy
scoreboard objectives add bs.d_ghast dummy
scoreboard objectives add bs.d_goat dummy
scoreboard objectives add bs.d_guardian dummy
scoreboard objectives add bs.d_hoglin dummy
scoreboard objectives add bs.d_husk dummy
# (index 21 / lo bit 21 reserved — illusioner removed)
scoreboard objectives add bs.d_ironglm dummy
scoreboard objectives add bs.d_llama dummy
scoreboard objectives add bs.d_magcube dummy
scoreboard objectives add bs.d_panda dummy
scoreboard objectives add bs.d_parched dummy
scoreboard objectives add bs.d_phantom dummy
scoreboard objectives add bs.d_piglin dummy
scoreboard objectives add bs.d_pigbrute dummy
scoreboard objectives add bs.d_pillager dummy
scoreboard objectives add bs.d_polarbr dummy
scoreboard objectives add bs.d_ravager dummy
scoreboard objectives add bs.d_shulker dummy
scoreboard objectives add bs.d_silvrfsh dummy
scoreboard objectives add bs.d_skeleton dummy
scoreboard objectives add bs.d_slime dummy
scoreboard objectives add bs.d_spider dummy
scoreboard objectives add bs.d_stray dummy
scoreboard objectives add bs.d_trllama dummy
scoreboard objectives add bs.d_vex dummy
scoreboard objectives add bs.d_vindctr dummy
scoreboard objectives add bs.d_warden dummy
scoreboard objectives add bs.d_witch dummy
scoreboard objectives add bs.d_wither dummy
scoreboard objectives add bs.d_withskel dummy
scoreboard objectives add bs.d_wolf dummy
scoreboard objectives add bs.d_zoglin dummy
scoreboard objectives add bs.d_zombie dummy
scoreboard objectives add bs.d_zombhrs dummy
scoreboard objectives add bs.d_znautls dummy
scoreboard objectives add bs.d_zombvill dummy
scoreboard objectives add bs.d_zombpig dummy

# === WORLD BOSS DROP TIER BITFIELDS (bs.d_*) ===
scoreboard objectives add bs.d_hollking dummy
scoreboard objectives add bs.d_verdwrdn dummy
scoreboard objectives add bs.d_stormfrg dummy
scoreboard objectives add bs.d_tidecllr dummy
scoreboard objectives add bs.d_erthshkr dummy
scoreboard objectives add bs.d_nightmre dummy
scoreboard objectives add bs.d_inftitan dummy
scoreboard objectives add bs.d_soulwrdn dummy
scoreboard objectives add bs.d_crimbhmt dummy
scoreboard objectives add bs.d_voidsovr dummy
scoreboard objectives add bs.d_endrarch dummy

# === COMPLETION & HURT BITFIELDS ===
scoreboard objectives add bs.comp_lo dummy
scoreboard objectives add bs.comp_hi dummy
scoreboard objectives add bs.comp_wb dummy
scoreboard objectives add bs.hurt_lo dummy
scoreboard objectives add bs.hurt_hi dummy
scoreboard objectives add bs.hurt_wb dummy

# === GUI ===
scoreboard objectives add bs.page dummy
scoreboard objectives add bs.temp dummy

# === CONSTANTS for bit operations ===
scoreboard players set #1 bs.temp 1
scoreboard players set #2 bs.temp 2
scoreboard players set #4 bs.temp 4
scoreboard players set #8 bs.temp 8
scoreboard players set #15 bs.temp 15
scoreboard players set #16 bs.temp 16
scoreboard players set #32 bs.temp 32

# Power-of-2 constants for bit extraction (index -> 2^index)
scoreboard players set #pow0 bs.temp 1
scoreboard players set #pow1 bs.temp 2
scoreboard players set #pow2 bs.temp 4
scoreboard players set #pow3 bs.temp 8
scoreboard players set #pow4 bs.temp 16
scoreboard players set #pow5 bs.temp 32
scoreboard players set #pow6 bs.temp 64
scoreboard players set #pow7 bs.temp 128
scoreboard players set #pow8 bs.temp 256
scoreboard players set #pow9 bs.temp 512
scoreboard players set #pow10 bs.temp 1024
scoreboard players set #pow11 bs.temp 2048
scoreboard players set #pow12 bs.temp 4096
scoreboard players set #pow13 bs.temp 8192
scoreboard players set #pow14 bs.temp 16384
scoreboard players set #pow15 bs.temp 32768
scoreboard players set #pow16 bs.temp 65536
scoreboard players set #pow17 bs.temp 131072
scoreboard players set #pow18 bs.temp 262144
scoreboard players set #pow19 bs.temp 524288
scoreboard players set #pow20 bs.temp 1048576
scoreboard players set #pow21 bs.temp 2097152
scoreboard players set #pow22 bs.temp 4194304
scoreboard players set #pow23 bs.temp 8388608
scoreboard players set #pow24 bs.temp 16777216
scoreboard players set #pow25 bs.temp 33554432
scoreboard players set #pow26 bs.temp 67108864
scoreboard players set #pow27 bs.temp 134217728
scoreboard players set #pow28 bs.temp 268435456
scoreboard players set #pow29 bs.temp 536870912

# === BESTIARY STAGES ===
function evercraft:bestiary/stages/load
