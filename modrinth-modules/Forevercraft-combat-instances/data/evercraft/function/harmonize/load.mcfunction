# Ability Harmonization System - Load
# Detects duplicate buffs from multiple sources and compounds them
# Formula: 2x Level N sources = 1x Level N+1 (compounding)

# === STRENGTH ===
scoreboard objectives add ec.h_str_1 dummy
scoreboard objectives add ec.h_str_2 dummy
scoreboard objectives add ec.h_str_3 dummy
scoreboard objectives add ec.h_str_4 dummy
scoreboard objectives add ec.h_str dummy

# === SPEED ===
scoreboard objectives add ec.h_spd_1 dummy
scoreboard objectives add ec.h_spd_2 dummy
scoreboard objectives add ec.h_spd_3 dummy
scoreboard objectives add ec.h_spd_4 dummy
scoreboard objectives add ec.h_speed dummy

# === HASTE ===
scoreboard objectives add ec.h_hst_1 dummy
scoreboard objectives add ec.h_hst_2 dummy
scoreboard objectives add ec.h_hst_3 dummy
scoreboard objectives add ec.h_hst_4 dummy
scoreboard objectives add ec.h_haste dummy

# === RESISTANCE ===
scoreboard objectives add ec.h_res_1 dummy
scoreboard objectives add ec.h_res_2 dummy
scoreboard objectives add ec.h_res_3 dummy
scoreboard objectives add ec.h_res_4 dummy
scoreboard objectives add ec.h_resist dummy

# === JUMP BOOST ===
scoreboard objectives add ec.h_jmp_1 dummy
scoreboard objectives add ec.h_jmp_2 dummy
scoreboard objectives add ec.h_jmp_3 dummy
scoreboard objectives add ec.h_jmp_4 dummy
scoreboard objectives add ec.h_jump dummy

# === REGENERATION ===
scoreboard objectives add ec.h_reg_1 dummy
scoreboard objectives add ec.h_reg_2 dummy
scoreboard objectives add ec.h_reg_3 dummy
scoreboard objectives add ec.h_reg_4 dummy
scoreboard objectives add ec.h_regen dummy

# Legacy scoreboards (keep for compatibility with set bonus checks)
scoreboard objectives add ec.h_speed_mx dummy
scoreboard objectives add ec.h_haste_mx dummy
scoreboard objectives add ec.h_resist_mx dummy
scoreboard objectives add ec.h_str_mx dummy
scoreboard objectives add ec.h_jump_mx dummy
scoreboard objectives add ec.h_regen_mx dummy

# Start the harmonization tick loop
schedule function evercraft:harmonize/tick 1s
