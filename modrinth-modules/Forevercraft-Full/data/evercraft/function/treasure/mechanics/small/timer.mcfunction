advancement revoke @s[tag=ec.small] only evercraft:treasure/mechanics/small/timer

execute if entity @s[scores={ec.small=..1}] run function evercraft:treasure/mechanics/small/over

scoreboard players remove @s ec.small 1