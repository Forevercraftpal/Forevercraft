# Dreaming Realm — Challenge Router
# Directs the player to their next available challenge
# Context: as @s = dreaming player

# Check which challenges are complete and direct to next
execute if score @s ec.dream_ch1 matches 0 run function evercraft:dreaming_realm/challenges/maze/start
execute if score @s ec.dream_ch1 matches 1 if score @s ec.dream_ch2 matches 0 run function evercraft:dreaming_realm/challenges/guardians/start
execute if score @s ec.dream_ch1 matches 1 if score @s ec.dream_ch2 matches 1 if score @s ec.dream_ch3 matches 0 run function evercraft:dreaming_realm/challenges/trial/start
