# Realm Milestone Complete: Duel of Legends — 50 duels completed
scoreboard players set #rm_done_29 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Duel of Legends",desc:"50 duels have been fought across the realm!",reward:"All players receive an Ornate Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
