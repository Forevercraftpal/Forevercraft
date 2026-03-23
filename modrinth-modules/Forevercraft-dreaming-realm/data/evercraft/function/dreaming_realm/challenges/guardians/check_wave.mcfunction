# Dream Guardians — Check Wave Completion
# Are all dream mobs dead? If so, advance to next wave.
# Context: as @s = dreaming player (ec.dream_wave 1-3)

# Count remaining dream mobs
execute store result score #dr_mobs ec.var if entity @e[tag=ec.dream_mob]

# Still mobs alive — wait
execute if score #dr_mobs ec.var matches 1.. run return 0

# Wave cleared!
playsound entity.player.levelup master @s ~ ~ ~ 0.8 1.2

# Advance wave
scoreboard players add @s ec.dream_wave 1

# Check if all 3 waves are done
execute if score @s ec.dream_wave matches 4.. run function evercraft:dreaming_realm/challenges/guardians/on_complete
execute if score @s ec.dream_wave matches 4.. run return 0

# Spawn next wave after brief pause
tellraw @s [{text:""},{"text":"  ","color":"gray"},{"text":"Wave cleared! Next wave incoming...","color":"#D4A574","italic":true}]
schedule function evercraft:dreaming_realm/challenges/guardians/spawn_next 3s
