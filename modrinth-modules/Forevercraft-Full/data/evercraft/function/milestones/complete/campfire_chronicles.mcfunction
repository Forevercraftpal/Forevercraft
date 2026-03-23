# Realm Milestone Complete: Campfire Chronicles — 25 stories witnessed
scoreboard players set #rm_done_32 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Campfire Chronicles",desc:"25 campfire stories have been shared across the realm!",reward:"All players receive an Ornate Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
