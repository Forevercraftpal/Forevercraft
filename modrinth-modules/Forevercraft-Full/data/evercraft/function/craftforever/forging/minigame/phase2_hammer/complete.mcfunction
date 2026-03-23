# Phase 2: HAMMER — Pattern complete!
tellraw @s [{text:"Pattern complete! ",color:"green",bold:true}]
playsound minecraft:block.anvil.use master @s ~ ~ ~ 1.0 0.8

# Clean up phase 2 elements
function evercraft:craftforever/forging/minigame/phase2_hammer/cleanup

# Advance to Phase 3
scoreboard players set @s ec.cf_phase 3
scoreboard players set @s ec.cf_timer 0
function evercraft:craftforever/forging/minigame/phase3_quench/start
