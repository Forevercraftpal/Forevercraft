# Get XP cost for current level
function evercraft:armor_mastery/get_xp_cost

# Check if we have enough XP to level up
execute if score #am_xp ec.var < #am_xp_cost ec.var run return 0

# Consume XP for this level
scoreboard players operation #am_xp ec.var -= #am_xp_cost ec.var
scoreboard players add #am_level ec.var 1

# Cap at max level
execute if score #am_level ec.var > #am_max_level ec.var run scoreboard players operation #am_level ec.var = #am_max_level ec.var
execute if score #am_level ec.var >= #am_max_level ec.var run scoreboard players set #am_xp ec.var 0

# Mark enchants as needing update
scoreboard players set #am_enchants_dirty ec.var 1

# Level-up effects
tellraw @s [{text:"[Armor Mastery] ",color:"gold"},{text:"Your armor reached ",color:"yellow"},{text:"Level ",color:"gold"},{score:{name:"#am_level",objective:"ec.var"},color:"gold",bold:true},{text:"!",color:"yellow"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.5
particle minecraft:enchant ~ ~1 ~ 0.3 0.3 0.3 1 20 force @s

# Check if max level reached
execute if score #am_level ec.var >= #am_max_level ec.var run function evercraft:armor_mastery/max_level_reached

# Check for additional level-ups (recursive — get_xp_cost recalculates for new level)
execute if score #am_level ec.var < #am_max_level ec.var run function evercraft:armor_mastery/level_up
