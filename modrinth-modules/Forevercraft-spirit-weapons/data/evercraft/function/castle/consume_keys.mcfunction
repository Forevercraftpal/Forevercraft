# Infinite Castle — Consume Keys (loop)
# Run as: player. Consumes #ic_key_cost keys one at a time.

# Consume 1 key
clear @s trial_key[custom_data~{dungeon_key:true}] 1

# Decrement counter
scoreboard players remove #ic_key_cost ec.var 1

# Loop if more to consume
execute if score #ic_key_cost ec.var matches 1.. run function evercraft:castle/consume_keys
