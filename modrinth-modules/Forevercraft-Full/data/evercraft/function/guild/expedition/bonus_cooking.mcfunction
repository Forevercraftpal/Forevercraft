# Guild Expedition — Cooking bonus: extra cooking XP
# @s = player, activity=13
# Grants (mult - 100) * 2 / 100 bonus cooking stat XP (mult is ×100 scale)

execute unless score #expedition_activity ec.var matches 13 run return 0
execute unless score @s ec.guild_id matches 1.. run return 0
execute if score #expedition_mult ec.var matches ..100 run return 0

# Calculate bonus cooking XP: (mult - 100) * 2 / 100
scoreboard players set #exp_cook_bonus ec.temp 2
scoreboard players operation #exp_cook_mult ec.temp = #expedition_mult ec.var
scoreboard players remove #exp_cook_mult ec.temp 100
scoreboard players operation #exp_cook_bonus ec.temp *= #exp_cook_mult ec.temp
scoreboard players operation #exp_cook_bonus ec.temp /= #100 ec.const

# Grant bonus cooking stat XP (minimum 1 if any buff active)
execute if score #exp_cook_bonus ec.temp matches ..0 run scoreboard players set #exp_cook_bonus ec.temp 1
scoreboard players operation @s adv.stat_cook += #exp_cook_bonus ec.temp

tellraw @s [{text:"  [Expedition] ",color:"gold"},{text:"Bonus cooking mastery!",color:"green"}]
