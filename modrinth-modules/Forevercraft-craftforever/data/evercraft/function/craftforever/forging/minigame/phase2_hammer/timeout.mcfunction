# Phase 2: HAMMER — Time's up!
tellraw @s [{text:"Time's up! ",color:"red"},{text:"Moving to quench phase.",color:"gray"}]

# Clean up and advance
function evercraft:craftforever/forging/minigame/phase2_hammer/cleanup
scoreboard players set @s ec.cf_phase 3
scoreboard players set @s ec.cf_timer 0
function evercraft:craftforever/forging/minigame/phase3_quench/start
