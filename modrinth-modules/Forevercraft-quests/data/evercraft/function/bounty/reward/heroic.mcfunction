# Bounty Reward — Heroic (T6): Mythical Crate + 750 Rep
loot give @s loot evercraft:achievements/crates/mythical
experience add @s 1000 points

# Reputation
scoreboard players add @s ec.village_rep 750
tellraw @s [{text:"  Bounty Reward: ",color:"gold"},{text:"Mythical Crate",color:"gold",bold:true},{text:" + ",color:"gray"},{text:"1000 XP",color:"green"},{text:" + ",color:"gray"},{text:"750 Rep",color:"aqua"}]

# Guild Expedition: Bounty bonus XP (activity=8)
function evercraft:guild/expedition/bonus_xp {base:1000,activity:8}

# Class Affinity XP — bounty complete
scoreboard players set #delta ec.temp 30000
function evercraft:affinity/grant_current
