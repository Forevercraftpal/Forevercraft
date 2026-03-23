advancement revoke @s[tag=ec.light] only evercraft:treasure/mechanics/light/timer

execute if entity @s[scores={ec.light=..1}] run function evercraft:treasure/mechanics/light/over

execute if entity @s[tag=ec.light] run function evercraft:treasure/mechanics/light/particles

scoreboard players remove @s ec.light 1