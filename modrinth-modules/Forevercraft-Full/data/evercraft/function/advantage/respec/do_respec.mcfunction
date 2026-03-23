# Execute respec for tree #respec_tree adv.temp

# (1) Clear cost item
clear @s minecraft:wheat_seeds[custom_data~{seed_of_forgetting:1b}] 1

# (2) Read current level into #respec_level
execute if score #respec_tree adv.temp matches 1 run scoreboard players operation #respec_level adv.temp = @s adv.agility
execute if score #respec_tree adv.temp matches 2 run scoreboard players operation #respec_level adv.temp = @s adv.dexterity
execute if score #respec_tree adv.temp matches 3 run scoreboard players operation #respec_level adv.temp = @s adv.evasion
execute if score #respec_tree adv.temp matches 4 run scoreboard players operation #respec_level adv.temp = @s adv.stealth
execute if score #respec_tree adv.temp matches 5 run scoreboard players operation #respec_level adv.temp = @s adv.vitality
execute if score #respec_tree adv.temp matches 6 run scoreboard players operation #respec_level adv.temp = @s adv.taskmaster
execute if score #respec_tree adv.temp matches 7 run scoreboard players operation #respec_level adv.temp = @s adv.beastmaster
execute if score #respec_tree adv.temp matches 8 run scoreboard players operation #respec_level adv.temp = @s adv.victorian
execute if score #respec_tree adv.temp matches 9 run scoreboard players operation #respec_level adv.temp = @s adv.fishing
execute if score #respec_tree adv.temp matches 10 run scoreboard players operation #respec_level adv.temp = @s adv.mining
execute if score #respec_tree adv.temp matches 11 run scoreboard players operation #respec_level adv.temp = @s adv.gathering
execute if score #respec_tree adv.temp matches 12 run scoreboard players operation #respec_level adv.temp = @s adv.blacksmith
execute if score #respec_tree adv.temp matches 13 run scoreboard players operation #respec_level adv.temp = @s adv.explorer
execute if score #respec_tree adv.temp matches 14 run scoreboard players operation #respec_level adv.temp = @s adv.culinary

# (3) Calculate refund
function evercraft:advantage/respec/calc_refund

# (4) Grant refund XP
function evercraft:advantage/respec/grant_refund with storage evercraft:advantage

# (5) Reset tree to 0
execute if score #respec_tree adv.temp matches 1 run scoreboard players set @s adv.agility 0
execute if score #respec_tree adv.temp matches 2 run scoreboard players set @s adv.dexterity 0
execute if score #respec_tree adv.temp matches 3 run scoreboard players set @s adv.evasion 0
execute if score #respec_tree adv.temp matches 4 run scoreboard players set @s adv.stealth 0
execute if score #respec_tree adv.temp matches 5 run scoreboard players set @s adv.vitality 0
execute if score #respec_tree adv.temp matches 6 run scoreboard players set @s adv.taskmaster 0
execute if score #respec_tree adv.temp matches 7 run scoreboard players set @s adv.beastmaster 0
execute if score #respec_tree adv.temp matches 8 run scoreboard players set @s adv.victorian 0
execute if score #respec_tree adv.temp matches 9 run scoreboard players set @s adv.fishing 0
execute if score #respec_tree adv.temp matches 10 run scoreboard players set @s adv.mining 0
execute if score #respec_tree adv.temp matches 11 run scoreboard players set @s adv.gathering 0
execute if score #respec_tree adv.temp matches 12 run scoreboard players set @s adv.blacksmith 0
execute if score #respec_tree adv.temp matches 13 run scoreboard players set @s adv.explorer 0
execute if score #respec_tree adv.temp matches 14 run scoreboard players set @s adv.culinary 0

# (6) Remove attribute modifiers for the respec'd tree
execute if score #respec_tree adv.temp matches 1 run attribute @s movement_speed modifier remove evercraft:adv_agility
execute if score #respec_tree adv.temp matches 2 run attribute @s block_interaction_range modifier remove evercraft:adv_dex_block
execute if score #respec_tree adv.temp matches 2 run attribute @s entity_interaction_range modifier remove evercraft:adv_dex_entity
execute if score #respec_tree adv.temp matches 4 run attribute @s movement_speed modifier remove evercraft:adv_stealth
execute if score #respec_tree adv.temp matches 5 run attribute @s max_health modifier remove evercraft:adv_vitality
execute if score #respec_tree adv.temp matches 10 run attribute @s block_break_speed modifier remove evercraft:adv_mining
execute if score #respec_tree adv.temp matches 10 run attribute @s block_break_speed modifier remove evercraft:adv_mining_surge
execute if score #respec_tree adv.temp matches 14 run scoreboard players set @s ec.ck_bonus_pct 0

# (7) Reapply all remaining effects (other trees unaffected)
function evercraft:advantage/effects/reapply_all

# (8) Set cooldown: 12,096,000 ticks (7 days)
scoreboard players set @s adv.respec_cd 12096000

# (9) Feedback
tellraw @s [{text:"✦ ",color:"gold"},{text:"Tree respec complete! ",color:"green"},{score:{name:"#refund",objective:"adv.temp"},color:"gold",bold:true},{text:" XP levels refunded.",color:"green"}]
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 0.8
particle minecraft:enchant ~ ~1 ~ 0.5 1 0.5 0.1 50

# Refresh GUI if open
execute if entity @s[tag=Adv.InMenu] run function evercraft:advantage/gui/refresh
