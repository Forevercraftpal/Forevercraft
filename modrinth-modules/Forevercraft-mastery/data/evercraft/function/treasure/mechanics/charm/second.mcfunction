scoreboard players remove @s ec.charm_timer 1

advancement revoke @s only evercraft:treasure/mechanics/charm/timer

execute if entity @s[scores={ec.charm_timer=..0}] run function evercraft:treasure/mechanics/charm/over
