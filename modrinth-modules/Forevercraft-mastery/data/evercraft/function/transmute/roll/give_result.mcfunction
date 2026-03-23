# Artifact Transmutation — Roll and give a random artifact of the NEXT tier
# Run as: player
# tx.tier = current deposited tier (1-5), we give tier+1

# Common (1) → Uncommon
execute if score @s tx.tier matches 1 run loot give @s loot evercraft:artifacts/uncommon/main

# Uncommon (2) → Rare
execute if score @s tx.tier matches 2 run loot give @s loot evercraft:artifacts/rare/main

# Rare (3) → Ornate
execute if score @s tx.tier matches 3 run loot give @s loot evercraft:artifacts/ornate/main

# Ornate (4) → Exquisite
execute if score @s tx.tier matches 4 run loot give @s loot evercraft:artifacts/exquisite/main

# Exquisite (5) → Mythical
execute if score @s tx.tier matches 5 run loot give @s loot evercraft:artifacts/mythical/main

# Mythical (6) → Mythical (reroll — excludes deposited artifacts)
execute if score @s tx.tier matches 6 run function evercraft:transmute/roll/give_mythical_result
