# Guild Donation — Dispatcher
# @s = player at guild stone, holding items to donate
# Routes to activity-specific donation handler based on today's expedition

# Must be in a guild
execute unless score @s ec.guild_id matches 1.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You are not in a guild!",color:"red"}]
execute unless score @s ec.guild_id matches 1.. run return 0

# Reset amount
scoreboard players set #guild_donate_amt ec.temp 0

# Dispatch to activity-specific donation handler
execute if score #expedition_activity ec.var matches 1 run return run function evercraft:guild/contribution/donate_1
execute if score #expedition_activity ec.var matches 2 run return run function evercraft:guild/contribution/donate_2
execute if score #expedition_activity ec.var matches 3 run return run function evercraft:guild/contribution/donate_3
execute if score #expedition_activity ec.var matches 4 run return run function evercraft:guild/contribution/donate_4
execute if score #expedition_activity ec.var matches 5 run return run function evercraft:guild/contribution/donate_5
execute if score #expedition_activity ec.var matches 7 run return run function evercraft:guild/contribution/donate_7
execute if score #expedition_activity ec.var matches 8 run return run function evercraft:guild/contribution/donate_8
execute if score #expedition_activity ec.var matches 9 run return run function evercraft:guild/contribution/donate_9
execute if score #expedition_activity ec.var matches 10 run return run function evercraft:guild/contribution/donate_10
execute if score #expedition_activity ec.var matches 11 run return run function evercraft:guild/contribution/donate_11
execute if score #expedition_activity ec.var matches 12 run return run function evercraft:guild/contribution/donate_12
execute if score #expedition_activity ec.var matches 13 run return run function evercraft:guild/contribution/donate_13

# Fallback: no expedition active
tellraw @s [{text:"[Guild] ",color:"green"},{text:"No expedition is active today — donations unavailable.",color:"yellow"}]
