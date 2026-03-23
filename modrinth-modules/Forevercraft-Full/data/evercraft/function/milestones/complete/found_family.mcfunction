# Realm Milestone Complete: Found Family — 75% of players have 2+ friends
scoreboard players set #rm_done_17 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Found Family",desc:"The realm has become a family!",reward:"All players receive an Ornate Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
