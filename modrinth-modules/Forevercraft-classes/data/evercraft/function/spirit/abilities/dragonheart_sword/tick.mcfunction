# Wyrmcleaver — Per-Tick Processing
# Run as @s at @s when holding spirit weapon ID 12

# === DRAGON'S AEGIS — Process active aegis zone ===
execute if entity @s[tag=ec.sp_aegis_active] as @e[tag=ec.sp_aegis,sort=nearest,limit=1,distance=..20] at @s run function evercraft:spirit/abilities/dragonheart_sword/aegis_tick

# Aegis timer decrement + expire
execute if entity @s[tag=ec.sp_aegis_active] run scoreboard players remove @s ec.sp_timer 1
execute if entity @s[tag=ec.sp_aegis_active,scores={ec.sp_timer=..0}] run function evercraft:spirit/abilities/dragonheart_sword/aegis_end

# === DRAGONHEART STRIKE — Charge steps ===
execute if entity @s[tag=ec.sp_dh_charging,scores={ec.sp_state=1..}] run function evercraft:spirit/abilities/dragonheart_sword/charge_step

# Final slam when charge ends (state hits 0 while tag still active)
execute if entity @s[tag=ec.sp_dh_charging,scores={ec.sp_state=..0}] run function evercraft:spirit/abilities/dragonheart_sword/charge_slam
