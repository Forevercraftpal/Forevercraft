# Lore Exchange — Calculate required pieces and shard reward
# Based on lx.tier (rarity 1-6)
# Sets lx.required and lx.reward

# Common (1): 3 pieces → 1 shard
execute if score @s lx.tier matches 1 run scoreboard players set @s lx.required 3
execute if score @s lx.tier matches 1 run scoreboard players set @s lx.reward 1

# Uncommon (2): 2 pieces → 1 shard
execute if score @s lx.tier matches 2 run scoreboard players set @s lx.required 2
execute if score @s lx.tier matches 2 run scoreboard players set @s lx.reward 1

# Rare (3): 1 piece → 1 shard
execute if score @s lx.tier matches 3 run scoreboard players set @s lx.required 1
execute if score @s lx.tier matches 3 run scoreboard players set @s lx.reward 1

# Ornate (4): 1 piece → 2 shards
execute if score @s lx.tier matches 4 run scoreboard players set @s lx.required 1
execute if score @s lx.tier matches 4 run scoreboard players set @s lx.reward 2

# Exquisite (5): 1 piece → 3 shards
execute if score @s lx.tier matches 5 run scoreboard players set @s lx.required 1
execute if score @s lx.tier matches 5 run scoreboard players set @s lx.reward 3

# Mythical (6): 1 piece → 4 shards
execute if score @s lx.tier matches 6 run scoreboard players set @s lx.required 1
execute if score @s lx.tier matches 6 run scoreboard players set @s lx.reward 4
