# Bestiary Stages — Load / Init
# Registers all bs.s_* (stage 0-7) and bs.c_* (claim bitfield) scoreboards
# Called from bestiary/load.mcfunction

# === STAGE TRACKING (bs.s_*) — 52 regular mobs ===
scoreboard objectives add bs.s_bee dummy
scoreboard objectives add bs.s_blaze dummy
scoreboard objectives add bs.s_bogged dummy
scoreboard objectives add bs.s_breeze dummy
scoreboard objectives add bs.s_camhusk dummy
scoreboard objectives add bs.s_cavespdr dummy
scoreboard objectives add bs.s_creaking dummy
scoreboard objectives add bs.s_creeper dummy
scoreboard objectives add bs.s_dolphin dummy
scoreboard objectives add bs.s_drowned dummy
scoreboard objectives add bs.s_e_guard dummy
scoreboard objectives add bs.s_enderman dummy
scoreboard objectives add bs.s_endmite dummy
scoreboard objectives add bs.s_edragon dummy
scoreboard objectives add bs.s_evoker dummy
scoreboard objectives add bs.s_fox dummy
scoreboard objectives add bs.s_ghast dummy
scoreboard objectives add bs.s_goat dummy
scoreboard objectives add bs.s_guardian dummy
scoreboard objectives add bs.s_hoglin dummy
scoreboard objectives add bs.s_husk dummy
scoreboard objectives add bs.s_ironglm dummy
scoreboard objectives add bs.s_llama dummy
scoreboard objectives add bs.s_magcube dummy
scoreboard objectives add bs.s_panda dummy
scoreboard objectives add bs.s_parched dummy
scoreboard objectives add bs.s_phantom dummy
scoreboard objectives add bs.s_piglin dummy
scoreboard objectives add bs.s_pigbrute dummy
scoreboard objectives add bs.s_pillager dummy
scoreboard objectives add bs.s_polarbr dummy
scoreboard objectives add bs.s_ravager dummy
scoreboard objectives add bs.s_shulker dummy
scoreboard objectives add bs.s_silvrfsh dummy
scoreboard objectives add bs.s_skeleton dummy
scoreboard objectives add bs.s_slime dummy
scoreboard objectives add bs.s_spider dummy
scoreboard objectives add bs.s_stray dummy
scoreboard objectives add bs.s_trllama dummy
scoreboard objectives add bs.s_vex dummy
scoreboard objectives add bs.s_vindctr dummy
scoreboard objectives add bs.s_warden dummy
scoreboard objectives add bs.s_witch dummy
scoreboard objectives add bs.s_wither dummy
scoreboard objectives add bs.s_withskel dummy
scoreboard objectives add bs.s_wolf dummy
scoreboard objectives add bs.s_zoglin dummy
scoreboard objectives add bs.s_zombie dummy
scoreboard objectives add bs.s_zombhrs dummy
scoreboard objectives add bs.s_znautls dummy
scoreboard objectives add bs.s_zombvill dummy
scoreboard objectives add bs.s_zombpig dummy

# === WORLD BOSS STAGE TRACKING (bs.s_*) — 11 bosses ===
scoreboard objectives add bs.s_hollking dummy
scoreboard objectives add bs.s_verdwrdn dummy
scoreboard objectives add bs.s_stormfrg dummy
scoreboard objectives add bs.s_tidecllr dummy
scoreboard objectives add bs.s_erthshkr dummy
scoreboard objectives add bs.s_nightmre dummy
scoreboard objectives add bs.s_inftitan dummy
scoreboard objectives add bs.s_soulwrdn dummy
scoreboard objectives add bs.s_crimbhmt dummy
scoreboard objectives add bs.s_voidsovr dummy
scoreboard objectives add bs.s_endrarch dummy

# === CLAIM BITFIELDS (bs.c_*) — bits 0-6 = stages 1-7 claimed ===
# 52 regular mobs
scoreboard objectives add bs.c_bee dummy
scoreboard objectives add bs.c_blaze dummy
scoreboard objectives add bs.c_bogged dummy
scoreboard objectives add bs.c_breeze dummy
scoreboard objectives add bs.c_camhusk dummy
scoreboard objectives add bs.c_cavespdr dummy
scoreboard objectives add bs.c_creaking dummy
scoreboard objectives add bs.c_creeper dummy
scoreboard objectives add bs.c_dolphin dummy
scoreboard objectives add bs.c_drowned dummy
scoreboard objectives add bs.c_e_guard dummy
scoreboard objectives add bs.c_enderman dummy
scoreboard objectives add bs.c_endmite dummy
scoreboard objectives add bs.c_edragon dummy
scoreboard objectives add bs.c_evoker dummy
scoreboard objectives add bs.c_fox dummy
scoreboard objectives add bs.c_ghast dummy
scoreboard objectives add bs.c_goat dummy
scoreboard objectives add bs.c_guardian dummy
scoreboard objectives add bs.c_hoglin dummy
scoreboard objectives add bs.c_husk dummy
scoreboard objectives add bs.c_ironglm dummy
scoreboard objectives add bs.c_llama dummy
scoreboard objectives add bs.c_magcube dummy
scoreboard objectives add bs.c_panda dummy
scoreboard objectives add bs.c_parched dummy
scoreboard objectives add bs.c_phantom dummy
scoreboard objectives add bs.c_piglin dummy
scoreboard objectives add bs.c_pigbrute dummy
scoreboard objectives add bs.c_pillager dummy
scoreboard objectives add bs.c_polarbr dummy
scoreboard objectives add bs.c_ravager dummy
scoreboard objectives add bs.c_shulker dummy
scoreboard objectives add bs.c_silvrfsh dummy
scoreboard objectives add bs.c_skeleton dummy
scoreboard objectives add bs.c_slime dummy
scoreboard objectives add bs.c_spider dummy
scoreboard objectives add bs.c_stray dummy
scoreboard objectives add bs.c_trllama dummy
scoreboard objectives add bs.c_vex dummy
scoreboard objectives add bs.c_vindctr dummy
scoreboard objectives add bs.c_warden dummy
scoreboard objectives add bs.c_witch dummy
scoreboard objectives add bs.c_wither dummy
scoreboard objectives add bs.c_withskel dummy
scoreboard objectives add bs.c_wolf dummy
scoreboard objectives add bs.c_zoglin dummy
scoreboard objectives add bs.c_zombie dummy
scoreboard objectives add bs.c_zombhrs dummy
scoreboard objectives add bs.c_znautls dummy
scoreboard objectives add bs.c_zombvill dummy
scoreboard objectives add bs.c_zombpig dummy

# 11 world bosses
scoreboard objectives add bs.c_hollking dummy
scoreboard objectives add bs.c_verdwrdn dummy
scoreboard objectives add bs.c_stormfrg dummy
scoreboard objectives add bs.c_tidecllr dummy
scoreboard objectives add bs.c_erthshkr dummy
scoreboard objectives add bs.c_nightmre dummy
scoreboard objectives add bs.c_inftitan dummy
scoreboard objectives add bs.c_soulwrdn dummy
scoreboard objectives add bs.c_crimbhmt dummy
scoreboard objectives add bs.c_voidsovr dummy
scoreboard objectives add bs.c_endrarch dummy

# === CLAIM TRIGGER (for non-op click events) ===
scoreboard objectives add bs.claim trigger

# === CONSTANTS for claim bit operations ===
scoreboard players set #64 bs.temp 64
