advancement revoke @s[tag=ec.step_height] only evercraft:treasure/mechanics/step_height/timer

execute if entity @s[scores={ec.step_height=..1}] run function evercraft:treasure/mechanics/step_height/over

scoreboard players remove @s ec.step_height 1

execute if entity @s[tag=ec.step_height] run function evercraft:treasure/mechanics/step_height/particles