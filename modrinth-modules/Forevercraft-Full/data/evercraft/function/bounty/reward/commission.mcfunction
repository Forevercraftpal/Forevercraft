# Bounty Reward — Commission (T4): Ornate Crate + 350 Rep
loot give @s loot evercraft:achievements/crates/ornate
experience add @s 250 points

# Reputation
scoreboard players add @s ec.village_rep 350
tellraw @s [{text:"  Bounty Reward: ",color:"gold"},{text:"Ornate Crate",color:"dark_purple"},{text:" + ",color:"gray"},{text:"250 XP",color:"green"},{text:" + ",color:"gray"},{text:"350 Rep",color:"aqua"}]

# Guild Expedition: Bounty bonus XP (activity=8)
function evercraft:guild/expedition/bonus_xp {base:250,activity:8}

# Class Affinity XP — bounty complete
scoreboard players set #delta ec.temp 30000
function evercraft:affinity/grant_current
