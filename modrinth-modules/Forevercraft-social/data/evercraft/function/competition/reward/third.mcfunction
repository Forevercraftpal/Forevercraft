# Competition Reward — 3rd Place
# Uncommon Crate + 100 XP + 3 Coins

# Uncommon Crate
loot give @s loot evercraft:mob_crates/items/uncommon

# XP
experience add @s 100 points

# Coins
scoreboard players add @s ec.coins 3
scoreboard players add #rm_coins ec.var 3

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"3rd Place! ",color:"#CD7F32",bold:true},{text:"Uncommon Crate + 100 XP + 3 Coins",color:"yellow"}]
