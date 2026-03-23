# Bulwark Shield — Guard Tick (Titan's Guard link maintenance)
# Run as player at player while guarding an ally

# Check if guarded player still exists and is nearby
execute unless entity @a[tag=ec.sp_guarded,distance=..16,limit=1] run function evercraft:spirit/abilities/bulwark_shield/guard_end
execute unless entity @s[tag=ec.sp_guarding] run return 0

# === CHAIN PARTICLE VFX (every 4 ticks for performance) ===
execute store result score #gd_mod ec.temp run time query gametime
scoreboard players operation #gd_mod ec.temp %= #4 ec.const
execute unless score #gd_mod ec.temp matches 0 run return 0

# Particles at self
particle dust{color:[0.3,0.5,1.0],scale:1.0} ~ ~1.5 ~ 0.3 0.3 0.3 0.02 5
particle enchant ~ ~2 ~ 0.3 0.3 0.3 0.05 3

# Particles at guarded ally
execute at @a[tag=ec.sp_guarded,limit=1] run particle dust{color:[0.3,0.5,1.0],scale:1.0} ~ ~1.5 ~ 0.3 0.3 0.3 0.02 5
execute at @a[tag=ec.sp_guarded,limit=1] run particle enchant ~ ~2 ~ 0.3 0.3 0.3 0.05 3

# Chain particles between self and ally (midpoint approximation)
# Place particles at midpoint between guardian and guarded
execute at @a[tag=ec.sp_guarded,limit=1] run particle dust{color:[0.2,0.4,0.9],scale:0.8} ~ ~1 ~ 2.0 0.5 2.0 0.03 8

# SFX — subtle hum every 40 ticks
execute store result score #gd_sfx ec.temp run time query gametime
scoreboard players operation #gd_sfx ec.temp %= #40 ec.const
execute if score #gd_sfx ec.temp matches 0 run playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 0.3 1.5
