# Guild Expedition — Grant bonus XP from expedition multiplier
# $(base) = base XP amount, $(activity) = required activity ID
# @s = player
# Grants (mult - 100) * base / 100 bonus XP (mult is ×100 scale)

$execute unless score #expedition_activity ec.var matches $(activity) run return 0
execute unless score @s ec.guild_id matches 1.. run return 0
execute if score #expedition_mult ec.var matches ..100 run return 0

# Calculate bonus: (mult - 100) * base / 100
$scoreboard players set #exp_bonus ec.temp $(base)
scoreboard players operation #exp_bonus_mult ec.temp = #expedition_mult ec.var
scoreboard players remove #exp_bonus_mult ec.temp 100
scoreboard players operation #exp_bonus ec.temp *= #exp_bonus_mult ec.temp
scoreboard players operation #exp_bonus ec.temp /= #100 ec.const

# Grant bonus XP
execute store result score #exp_bonus_check ec.temp run scoreboard players get #exp_bonus ec.temp
execute if score #exp_bonus_check ec.temp matches 1.. run function evercraft:guild/expedition/grant_bonus_xp

# Notify
execute if score #exp_bonus_check ec.temp matches 1.. run function evercraft:guild/expedition/notify_bonus with storage evercraft:expedition bonus
