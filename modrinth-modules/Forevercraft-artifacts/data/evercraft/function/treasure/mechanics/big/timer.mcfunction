advancement revoke @s[tag=ec.big] only evercraft:treasure/mechanics/big/timer

execute if entity @s[scores={ec.big=..1}] run function evercraft:treasure/mechanics/big/over

scoreboard players remove @s ec.big 1