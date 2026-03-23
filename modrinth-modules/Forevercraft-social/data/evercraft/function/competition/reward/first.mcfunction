# Competition Reward — 1st Place
# Ornate Crate + 500 XP + 10 Coins + Rare Artifact

# Ornate Crate
loot give @s loot evercraft:mob_crates/items/ornate

# XP
experience add @s 500 points

# Coins
scoreboard players add @s ec.coins 10
scoreboard players add #rm_coins ec.var 10

# Rare Artifact
loot give @s loot evercraft:artifacts/rare/main

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"1st Place! ",color:"gold",bold:true},{text:"Ornate Crate + 500 XP + 10 Coins + Rare Artifact",color:"yellow"}]
