# Soulstring — Rift Volley (Right-click, 12s CD = 240 ticks)
# Fire 7 void rifts in a cone pattern ahead of the player
# Each rift: 2-block radius pull + 4 damage, lasts 40 ticks
# Spirit tier: 10 rifts (extra 3 at wider angles)

# Set cooldown
scoreboard players set @s ec.sp_cd1 240

# SFX
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1.0 1.4
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 0.8 1.8

# Summon 7 rift markers in a cone pattern (spread across ~30 degrees)
# Center rift
execute positioned ^ ^1 ^10 run summon marker ~ ~ ~ {Tags:["ec.sp_rift","ec.sp_temp"],CustomName:"rift"}
# Inner left/right
execute positioned ^-2 ^1 ^9 run summon marker ~ ~ ~ {Tags:["ec.sp_rift","ec.sp_temp"],CustomName:"rift"}
execute positioned ^2 ^1 ^9 run summon marker ~ ~ ~ {Tags:["ec.sp_rift","ec.sp_temp"],CustomName:"rift"}
# Mid left/right
execute positioned ^-3.5 ^1 ^8 run summon marker ~ ~ ~ {Tags:["ec.sp_rift","ec.sp_temp"],CustomName:"rift"}
execute positioned ^3.5 ^1 ^8 run summon marker ~ ~ ~ {Tags:["ec.sp_rift","ec.sp_temp"],CustomName:"rift"}
# Outer left/right
execute positioned ^-1 ^1 ^13 run summon marker ~ ~ ~ {Tags:["ec.sp_rift","ec.sp_temp"],CustomName:"rift"}
execute positioned ^1 ^1 ^13 run summon marker ~ ~ ~ {Tags:["ec.sp_rift","ec.sp_temp"],CustomName:"rift"}

# Spirit tier: 3 extra rifts at wider angles
execute if score @s ec.sp_tier matches 7 positioned ^-5 ^1 ^7 run summon marker ~ ~ ~ {Tags:["ec.sp_rift","ec.sp_temp"],CustomName:"rift"}
execute if score @s ec.sp_tier matches 7 positioned ^5 ^1 ^7 run summon marker ~ ~ ~ {Tags:["ec.sp_rift","ec.sp_temp"],CustomName:"rift"}
execute if score @s ec.sp_tier matches 7 positioned ^ ^1 ^15 run summon marker ~ ~ ~ {Tags:["ec.sp_rift","ec.sp_temp"],CustomName:"rift"}

# Set timer and owner on all new rifts (40 ticks = 2 seconds)
execute as @e[tag=ec.sp_temp] run scoreboard players set @s ec.sp_timer 40
scoreboard players operation @e[tag=ec.sp_temp] ec.sp_owner = @s ec.sp_uid
tag @e[tag=ec.sp_temp] remove ec.sp_temp

# VFX at player
particle reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 30
particle witch ~ ~1 ~ 0.3 0.3 0.3 0.05 15

title @s actionbar [{"text":"RIFT VOLLEY!","color":"dark_purple","bold":true}]
