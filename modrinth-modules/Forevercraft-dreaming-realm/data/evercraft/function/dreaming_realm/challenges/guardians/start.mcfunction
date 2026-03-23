# Dream Guardians — Start
# Begin wave-based combat challenge in the NE island
# Context: as @s = dreaming player

tellraw @s [{text:""},{"text":"✦ ","color":"gold"},{"text":"Dream Guardians","color":"#E74C3C","bold":true},{"text":" — Defeat 3 waves of dream creatures!","color":"#D4A574","italic":true}]
playsound entity.wither.spawn master @s ~ ~ ~ 0.3 1.5

# Set wave 1
scoreboard players set @s ec.dream_wave 1

# Spawn wave 1
function evercraft:dreaming_realm/challenges/guardians/spawn_wave
