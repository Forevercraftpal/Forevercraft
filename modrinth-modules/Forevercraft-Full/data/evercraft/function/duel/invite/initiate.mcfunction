# Duel Invite — Initiate (runs as challenger looking at another player while sneaking with sword)

# Block if already in a duel
execute if score @s ec.duel_active matches 1.. run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You are already in a duel!",color:"red"}]

# Block if in dreaming realm
execute if entity @s[tag=dr.in_realm] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cannot duel while in the Dreaming Realm!",color:"red"}]

# Block if in dungeon
execute if entity @s[tag=dg.player] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cannot duel while in a dungeon!",color:"red"}]

# Block if in any GUI menu
execute if entity @s[tag=Adv.InMenu] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Close your menu first!",color:"red"}]
execute if entity @s[tag=TX.InMenu] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Close your menu first!",color:"red"}]
execute if entity @s[tag=RF.InMenu] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Close your menu first!",color:"red"}]
execute if entity @s[tag=HS.InMenu] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Close your menu first!",color:"red"}]
execute if entity @s[tag=DG.InMenu] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Close your menu first!",color:"red"}]

# Block if another duel is active
execute if score #duel_active ec.var matches 1.. run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Another duel is already in progress!",color:"red"}]

# Daily limit check — reset if new day
execute store result score #current_day ec.temp run time query day
execute unless score @s ec.duel_last_day = #current_day ec.temp run scoreboard players set @s ec.duel_today 0
scoreboard players operation @s ec.duel_last_day = #current_day ec.temp

# Block if at daily limit
execute if score @s ec.duel_today matches 3.. run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You have reached your daily duel limit (3/3)!",color:"red"}]

# Send invite to the raycast target (already tagged duel.ray_target by raycast/start)
# duel.challenger tag stays until invite is resolved (accept/decline/timeout)
tag @s add duel.challenger
execute as @a[tag=duel.ray_target,limit=1] run function evercraft:duel/invite/receive
