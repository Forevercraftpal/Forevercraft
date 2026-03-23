# Mining sync — compute clean total from raw ec.break_* scores
# ec.total is polluted by #progression bonus from treasure system, so we recompute
function evercraft:advantage/mining/sum_blocks
scoreboard players operation @s adv.stat_mine = #mine_rt adv.temp
scoreboard players operation @s adv.stat_mine -= @s adv.base_mine

# Ore-only total for ore challenges (Fortunate, Gem Hunter)
function evercraft:advantage/mining/sum_ores
scoreboard players operation @s adv.stat_ore = #ore_rt adv.temp
scoreboard players operation @s adv.stat_ore -= @s adv.base_ore
