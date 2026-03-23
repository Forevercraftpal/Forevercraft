# Realm Milestone Complete: Companion Collectors — 25 companions discovered
scoreboard players set #rm_done_6 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Companion Collectors",desc:"25 unique companions have been discovered!",reward:"All players receive an Ornate Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
