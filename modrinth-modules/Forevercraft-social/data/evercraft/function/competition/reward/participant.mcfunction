# Competition Reward — Participant (scored but not top 3)
# Common Crate + 50 XP + 1 Coin

# Common Crate
loot give @s loot evercraft:mob_crates/items/common

# XP
experience add @s 50 points

# Coins
scoreboard players add @s ec.coins 1
scoreboard players add #rm_coins ec.var 1

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Thanks for participating! ",color:"gray"},{text:"Common Crate + 50 XP + 1 Coin",color:"yellow"}]
