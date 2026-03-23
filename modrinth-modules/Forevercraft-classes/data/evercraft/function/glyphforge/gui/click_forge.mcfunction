# Glyphforge GUI — Click Forge/Start/Collect (state-aware router)
data remove entity @s interaction

# Route based on player's current state
# State 0: no rune deposited — error
execute as @p[distance=..6,tag=RF.InMenu] if score @s rf.state matches 0 run tellraw @s [{text:"Deposit a rune first!",color:"red"}]

# State 1: rune deposited — start forging
execute as @p[distance=..6,tag=RF.InMenu] if score @s rf.state matches 1 at @s run function evercraft:glyphforge/gui/start_forge

# State 3: forge complete — collect
execute as @p[distance=..6,tag=RF.InMenu] if score @s rf.state matches 3 at @s run function evercraft:glyphforge/gui/collect
