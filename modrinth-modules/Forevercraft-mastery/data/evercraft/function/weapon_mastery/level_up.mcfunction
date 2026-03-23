# Get XP cost for current level
function evercraft:weapon_mastery/get_xp_cost

# Check if we have enough XP to level up
execute if score #wm_xp ec.var < #wm_xp_cost ec.var run return 0

# Consume XP for this level
scoreboard players operation #wm_xp ec.var -= #wm_xp_cost ec.var
scoreboard players add #wm_level ec.var 1

# Cap at max level
execute if score #wm_level ec.var > #wm_max_level ec.var run scoreboard players operation #wm_level ec.var = #wm_max_level ec.var
execute if score #wm_level ec.var >= #wm_max_level ec.var run scoreboard players set #wm_xp ec.var 0

# Mark enchants as needing update
scoreboard players set #wm_enchants_dirty ec.var 1

# Level-up effects
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your weapon reached ",color:"yellow"},{text:"Level ",color:"gold"},{score:{name:"#wm_level",objective:"ec.var"},color:"gold",bold:true},{text:"!",color:"yellow"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.5
particle minecraft:enchant ~ ~1 ~ 0.3 0.3 0.3 1 20 force @s

# Check if max level reached
execute if score #wm_level ec.var >= #wm_max_level ec.var run function evercraft:weapon_mastery/max_level_reached

# Check for additional level-ups (recursive — get_xp_cost recalculates for new level)
execute if score #wm_level ec.var < #wm_max_level ec.var run function evercraft:weapon_mastery/level_up
