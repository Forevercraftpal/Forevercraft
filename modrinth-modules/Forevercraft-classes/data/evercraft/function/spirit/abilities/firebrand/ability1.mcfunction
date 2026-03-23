# Firebrand — Earthshatter (Right-click, 10s CD)
# Shockwave in 8-block radius: launch upward + 12 damage
# Leaves slow zone for 5 seconds
# Spirit tier: 10-block radius

# Set cooldown (200 ticks = 10 seconds)
scoreboard players set @s ec.sp_cd1 200

# Determine radius based on tier
# Normal: 8 blocks, Spirit: 10 blocks

# === SHOCKWAVE DAMAGE ===
# Store player's effectiveness to storage before switching to target context (multiplayer-safe)
execute store result storage evercraft:temp sp_dmg.eff int 1 run scoreboard players get @s ec.sp_eff
data modify storage evercraft:temp sp_dmg.base set value 12
data modify storage evercraft:temp sp_dmg.type set value "player_attack"
# Damage all entities in radius + launch upward
execute if score @s ec.sp_tier matches 7 as @e[distance=..10,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] at @s run function evercraft:spirit/abilities/firebrand/earthshatter_hit
execute unless score @s ec.sp_tier matches 7 as @e[distance=..8,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] at @s run function evercraft:spirit/abilities/firebrand/earthshatter_hit

# === SLOW ZONE ===
# Summon a marker at player position to create slow zone (5 seconds = 100 ticks)
summon marker ~ ~ ~ {Tags:["ec.sp_slow_zone","ec.sp_firebrand"],CustomName:{text:"earthshatter_zone"}}

# === VFX ===
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.0 0.6
playsound minecraft:item.mace.smash_ground player @a ~ ~ ~ 1.0 0.8
particle explosion ~ ~0.5 ~ 3 0.5 3 0.1 15
particle campfire_cosy_smoke ~ ~0.2 ~ 4 0.1 4 0.01 40
particle dust{color:[0.6,0.3,0.1],scale:1.5} ~ ~0.5 ~ 4 0.3 4 0.1 50

title @s actionbar [{"text":"EARTHSHATTER!","color":"dark_red","bold":true}]
