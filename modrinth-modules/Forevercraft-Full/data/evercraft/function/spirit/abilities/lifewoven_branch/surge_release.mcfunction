# Lifewoven Branch — Life Surge Release
# Massive heal wave to all players within 20 blocks (spirit: 25)
# Instant Health 4 + clear negatives + Regen IV + Absorption IV for 5s

# Remove channel tag + clear slowness from channel
tag @s remove ec.sp_surge_charging
effect clear @s slowness

# === HEAL WAVE ===
# Instant Health level 4 (max heal)
execute if score @s ec.sp_tier matches 7 run effect give @a[distance=..25] instant_health 1 4 true
execute unless score @s ec.sp_tier matches 7 run effect give @a[distance=..20] instant_health 1 4 true

# Clear negative effects from all healed allies
execute if score @s ec.sp_tier matches 7 as @a[distance=..25] run function evercraft:spirit/abilities/lifewoven_branch/clear_negatives
execute unless score @s ec.sp_tier matches 7 as @a[distance=..20] run function evercraft:spirit/abilities/lifewoven_branch/clear_negatives

# Regeneration IV + Absorption IV for 5 seconds (100 ticks)
execute if score @s ec.sp_tier matches 7 run effect give @a[distance=..25] regeneration 5 3 false
execute if score @s ec.sp_tier matches 7 run effect give @a[distance=..25] absorption 5 3 false
execute unless score @s ec.sp_tier matches 7 run effect give @a[distance=..20] regeneration 5 3 false
execute unless score @s ec.sp_tier matches 7 run effect give @a[distance=..20] absorption 5 3 false

# === VFX — massive green explosion of life ===
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1.5 1.2
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1.0 1.5
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1.0 0.8
particle happy_villager ~ ~1 ~ 10.0 2.0 10.0 0.5 80
particle dust{color:[0.2,1.0,0.3],scale:2.5} ~ ~1 ~ 8.0 2.0 8.0 0.02 40
particle enchant ~ ~2 ~ 6.0 2.0 6.0 2.0 50
particle heart ~ ~2 ~ 4.0 1.0 4.0 0.1 15
particle totem_of_undying ~ ~1.5 ~ 3.0 1.5 3.0 0.3 30

title @s actionbar [{"text":"LIFE SURGE!","color":"green","bold":true}]
