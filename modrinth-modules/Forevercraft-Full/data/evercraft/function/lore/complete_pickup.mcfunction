# Lore Discovery: Pickup complete — award collectible piece
# Run as player, at player position

# Hide boss bar and reset state
bossbar set evercraft:lore_pickup visible false
scoreboard players set @s ec.lore_picking 0
scoreboard players set @s ec.lore_progress 0

# Despawn the sparkle (nearest marker within 8 blocks)
execute as @e[type=marker,tag=ec.lore_data,distance=..8,limit=1,sort=nearest] at @s run function evercraft:lore/despawn_sparkle

# Roll for collectible piece and give to player
# Convergence sparkles use a dedicated roll (forced to convergence lore set)
scoreboard players set #conv_lore ec.temp 0
execute if entity @s[tag=ec.conv_pickup] run scoreboard players set #conv_lore ec.temp 1
execute if entity @s[tag=ec.conv_pickup] run tag @s remove ec.conv_pickup
execute if score #conv_lore ec.temp matches 1 run function evercraft:convergence/roll_piece
execute if score #conv_lore ec.temp matches 0 run function evercraft:lore/roll/pick_piece

# Completion effects
playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 0.8 1.2
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 0.8
particle minecraft:end_rod ~ ~1 ~ 0.3 0.5 0.3 0.03 15

# Award XP for collecting
experience add @s 3 points

# 1/3000 chance for Collector's Dream Relic (permanent +1 dream rate)
execute unless score @s ec.dream_relic_count matches 1.. store result score #dream_roll ec.temp run random value 1..3000
execute unless score @s ec.dream_relic_count matches 1.. if score #dream_roll ec.temp matches 1 run loot give @s loot evercraft:items/collectors_dream_relic
execute unless score @s ec.dream_relic_count matches 1.. if score #dream_roll ec.temp matches 1 run tellraw @s [{text:"✦ ",color:"gold"},{text:"A ",color:"yellow"},{text:"Collector's Dream Relic",color:"light_purple",bold:true},{text:" resonates within the fragments!",color:"yellow"}]

# 1/50 chance for a bonus crate
execute store result score #lore_crate ec.temp run random value 1..50
execute if score #lore_crate ec.temp matches 1 store result score #inv_full ec.var run function evercraft:util/check_inv_full
execute if score #lore_crate ec.temp matches 1 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:cooking/bonus_crate
execute if score #lore_crate ec.temp matches 1 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:cooking/bonus_crate
execute if score #lore_crate ec.temp matches 1 run tellraw @s [{text:"[Lore] ",color:"gold"},{text:"A crate was hidden among the fragments!",color:"yellow"}]
execute if score #lore_crate ec.temp matches 1 if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your crate was dropped at your feet.",color:"yellow"}]
execute if score #lore_crate ec.temp matches 1 if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# Track for achievements
scoreboard players add @s ach.lore_found 1

# Notify player
tellraw @s [{text:"[Lore] ",color:"gold"},{text:"You found a lore fragment!",color:"yellow"}]

# Guild Diplomacy Event: Lore Discovery scoring (activity 8)
execute if score #gd_event_active ec.var matches 1 if score #gd_event_activity ec.var matches 8 if score @s ec.gd_event_active matches 1 run scoreboard players add @s ec.gd_event_score 1
