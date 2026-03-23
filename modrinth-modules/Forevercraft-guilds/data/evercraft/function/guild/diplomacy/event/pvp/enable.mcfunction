# Guild Diplomacy — Enable PvP for player in enemy territory
# @s = player entering enemy zone during pillage

# Save current team (for restoration later)
# Use the team detection pattern from duel system
tag @s add ec.gd_pvp

# Leave team to enable PvP (same as duel leave_team pattern)
team leave @s

# Notify
tellraw @s [{text:"[Pillage] ",color:"dark_red"},{text:"You've entered enemy territory! ",color:"red",bold:true},{text:"PvP ENABLED",color:"dark_red",bold:true}]
playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0.5
