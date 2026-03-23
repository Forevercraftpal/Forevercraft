# Forging Minigame — Phase Dispatcher (runs as player every tick)
execute if score @s ec.cf_phase matches 1 run function evercraft:craftforever/forging/minigame/phase1_heat/tick
execute if score @s ec.cf_phase matches 2 run function evercraft:craftforever/forging/minigame/phase2_hammer/tick
execute if score @s ec.cf_phase matches 3 run function evercraft:craftforever/forging/minigame/phase3_quench/tick
