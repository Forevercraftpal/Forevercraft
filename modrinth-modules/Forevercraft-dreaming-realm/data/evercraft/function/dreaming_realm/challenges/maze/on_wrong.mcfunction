# Memory Maze — Wrong Step
# Knockback + damage, reset sequence
# Context: as @s = dreaming player, at @s

# Feedback
playsound entity.villager.no master @s ~ ~ ~ 1.0 0.8
particle angry_villager ~ ~1 ~ 0.3 0.3 0.3 0 3 normal @s

# Knockback + light damage (2 hearts, not lethal)
damage @s 4 minecraft:generic
effect give @s slowness 1 2 true

# Reset sequence
scoreboard players set @s ec.dream_seq 0

tellraw @s [{text:""},{"text":"✦ ","color":"red"},{"text":"Wrong! The sequence resets...","color":"#D4A574","italic":true}]

# Re-show the sequence after a brief pause
schedule function evercraft:dreaming_realm/challenges/maze/show_sequence 2s
