# Macro: teleport this laborer and its interaction entity to home coordinates
$tp @s $(hx) $(hy) $(hz)
$execute at @s as @e[type=interaction,tag=ec.lb_interact,distance=..10,limit=1] run tp @s $(hx) $(hy) $(hz)
