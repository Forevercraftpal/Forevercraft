# Bounty Reward — Contract (T3): Rare Crate + 200 Rep
loot give @s loot evercraft:achievements/crates/rare
experience add @s 150 points

# Reputation
scoreboard players add @s ec.village_rep 200
tellraw @s [{text:"  Bounty Reward: ",color:"gold"},{text:"Rare Crate",color:"aqua"},{text:" + ",color:"gray"},{text:"150 XP",color:"green"},{text:" + ",color:"gray"},{text:"200 Rep",color:"aqua"}]

# Guild Expedition: Bounty bonus XP (activity=8)
function evercraft:guild/expedition/bonus_xp {base:150,activity:8}

# Class Affinity XP — bounty complete
scoreboard players set #delta ec.temp 30000
function evercraft:affinity/grant_current
