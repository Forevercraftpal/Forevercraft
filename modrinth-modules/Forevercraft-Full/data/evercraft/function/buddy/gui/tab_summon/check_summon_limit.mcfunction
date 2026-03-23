# Tab 3: Check Summon Limit
# @s = player attempting to summon
# Sets #bd_summon_ok ec.temp = 1 if allowed, 0 if denied

scoreboard players set #bd_summon_ok ec.temp 1

# Best buddy: unlimited summons
execute as @e[type=#evercraft:tameable_companions,tag=ec.bd_best,limit=1] run return 0

# Buddy: 4/day
execute if entity @e[type=#evercraft:tameable_companions,tag=ec.bd_buddy,limit=1] if score @s ec.bd_summon_ct matches 4.. run scoreboard players set #bd_summon_ok ec.temp 0
execute if entity @e[type=#evercraft:tameable_companions,tag=ec.bd_buddy,limit=1] if score @s ec.bd_summon_ct matches 4.. run tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Your buddy has been summoned 4 times today. Try again tomorrow!",color:"red"}]
execute if score #bd_summon_ok ec.temp matches 0 run return fail

# Regular tamed: 1/day
execute unless entity @e[type=#evercraft:tameable_companions,tag=ec.bd_buddy,limit=1] if score @s ec.bd_summon_ct matches 1.. run scoreboard players set #bd_summon_ok ec.temp 0
execute unless entity @e[type=#evercraft:tameable_companions,tag=ec.bd_buddy,limit=1] if score @s ec.bd_summon_ct matches 1.. run tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"You can only summon regular tamed animals once per day.",color:"red"}]
