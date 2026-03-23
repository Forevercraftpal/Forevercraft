# Hero's Dance active ability — AoE dash attack
# Triggered by advancement (using goat_horn with hero_dance custom_data)
# Runs as @s = player at @s

# Cooldown check
execute if score @s ec.hero_cd matches 1.. run return run tellraw @s [{"text":"[Artifact Set] ","color":"gold"},{"text":"Hero's Dance on cooldown!","color":"red"}]

# Set cooldown (60s = 1200 ticks)
scoreboard players set @s ec.hero_cd 1200

# Dash forward
effect give @s speed 1 2 true

# AoE damage to enemies in a 5 block forward cone
tag @s add ec.hero_src
execute at @s positioned ^ ^ ^1 as @e[type=!player,type=!armor_stand,type=!marker,distance=..3] run damage @s 8 minecraft:player_attack by @a[tag=ec.hero_src,limit=1]
execute at @s positioned ^ ^ ^3 as @e[type=!player,type=!armor_stand,type=!marker,distance=..3] run damage @s 8 minecraft:player_attack by @a[tag=ec.hero_src,limit=1]
execute at @s positioned ^ ^ ^5 as @e[type=!player,type=!armor_stand,type=!marker,distance=..3] run damage @s 8 minecraft:player_attack by @a[tag=ec.hero_src,limit=1]
tag @s remove ec.hero_src

# Particles along dash path
particle sweep_attack ^ ^1 ^1 0.3 0.3 0.3 0 5 force
particle sweep_attack ^ ^1 ^3 0.3 0.3 0.3 0 5 force
particle sweep_attack ^ ^1 ^5 0.3 0.3 0.3 0 5 force
particle end_rod ^ ^1 ^2 0.2 0.5 0.2 0.05 15 force
particle end_rod ^ ^1 ^4 0.2 0.5 0.2 0.05 15 force

playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 0.8
playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 0.5 1.5

tellraw @s [{"text":"[Artifact Set] ","color":"gold"},{"text":"Hero's Dance!","color":"light_purple","bold":true}]

# Revoke advancement for re-trigger
advancement revoke @s only evercraft:artifacts/sets/hero_item_use
