# Happy Ghast — Toggle Sit/Follow
# @s = tamed happy ghast

# Branch on current state using tag to avoid read-after-write issue
tag @s add ec.ghast_check
execute if score @s ghast.sitting matches 1 run tag @s add ec.ghast_was_sitting
execute unless entity @s[tag=ec.ghast_was_sitting] run tag @s add ec.ghast_was_standing
tag @s remove ec.ghast_check

# Was sitting → stand
execute if entity @s[tag=ec.ghast_was_sitting] run scoreboard players set @s ghast.sitting 0
execute if entity @s[tag=ec.ghast_was_sitting] run effect clear @s slowness
execute if entity @s[tag=ec.ghast_was_sitting] run tellraw @p [{text:"[",color:"dark_gray"},{text:"Happy Ghast",color:"#FF69B4"},{text:"] ",color:"dark_gray"},{text:"Your ghast will follow you now.",color:"green"}]

# Was standing → sit
execute if entity @s[tag=ec.ghast_was_standing] run scoreboard players set @s ghast.sitting 1
execute if entity @s[tag=ec.ghast_was_standing] run effect give @s slowness 99999 127 true
execute if entity @s[tag=ec.ghast_was_standing] run tellraw @p [{text:"[",color:"dark_gray"},{text:"Happy Ghast",color:"#FF69B4"},{text:"] ",color:"dark_gray"},{text:"Your ghast will stay here.",color:"yellow"}]

# Cleanup
tag @s remove ec.ghast_was_sitting
tag @s remove ec.ghast_was_standing
