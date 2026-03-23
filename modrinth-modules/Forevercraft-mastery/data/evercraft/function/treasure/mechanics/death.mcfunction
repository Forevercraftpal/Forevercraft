execute if entity @s[scores={ec.big=1..}] run function evercraft:treasure/mechanics/big/over
execute if entity @s[scores={ec.small=1..}] run function evercraft:treasure/mechanics/small/over
execute if entity @s[scores={ec.step_height=1..}] run function evercraft:treasure/mechanics/step_height/over
execute if entity @s[scores={ec.reach=1..}] run function evercraft:treasure/mechanics/reach/over
execute if entity @s[scores={ec.light=1..}] run function evercraft:treasure/mechanics/light/over

scoreboard players set @s ec.death 0