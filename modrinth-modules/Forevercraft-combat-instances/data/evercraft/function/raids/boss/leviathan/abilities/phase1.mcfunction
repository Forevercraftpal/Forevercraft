# The Leviathan — Phase 1: The Predator (100%-66% HP)
# - Guardian laser beam (2s charge, 15 damage) every 120 ticks
# - Tidal waves (knockback + 4 damage) every 240 ticks

# ── Laser Beam (every 6 seconds) ──
execute if score #rd_lv_laser_cd ec.var matches 0 run function evercraft:raids/boss/leviathan/abilities/laser_beam
execute if score #rd_lv_laser_cd ec.var matches 0 run scoreboard players set #rd_lv_laser_cd ec.var 120

# ── Tidal Wave (every 12 seconds) ──
execute if score #rd_lv_wave_cd ec.var matches 0 run function evercraft:raids/boss/leviathan/abilities/tidal_wave
execute if score #rd_lv_wave_cd ec.var matches 0 run scoreboard players set #rd_lv_wave_cd ec.var 240
