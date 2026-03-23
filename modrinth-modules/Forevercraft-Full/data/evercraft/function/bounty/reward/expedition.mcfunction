# Bounty Reward — Expedition (T5): Exquisite Crate + 500 Rep
loot give @s loot evercraft:achievements/crates/exquisite
experience add @s 500 points

# Reputation
scoreboard players add @s ec.village_rep 500
tellraw @s [{text:"  Bounty Reward: ",color:"gold"},{text:"Exquisite Crate",color:"light_purple"},{text:" + ",color:"gray"},{text:"500 XP",color:"green"},{text:" + ",color:"gray"},{text:"500 Rep",color:"aqua"}]

# Guild Expedition: Bounty bonus XP (activity=8)
function evercraft:guild/expedition/bonus_xp {base:500,activity:8}

# Class Affinity XP — bounty complete
scoreboard players set #delta ec.temp 30000
function evercraft:affinity/grant_current
