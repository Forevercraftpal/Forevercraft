# Competition Reward — 2nd Place
# Rare Crate + 250 XP + 5 Coins

# Rare Crate
loot give @s loot evercraft:mob_crates/items/rare

# XP
experience add @s 250 points

# Coins
scoreboard players add @s ec.coins 5
scoreboard players add #rm_coins ec.var 5

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"2nd Place! ",color:"white",bold:true},{text:"Rare Crate + 250 XP + 5 Coins",color:"yellow"}]
