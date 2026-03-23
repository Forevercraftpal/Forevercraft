# Realm Milestone Complete: Full Bestiary — All 96 companions discovered
scoreboard players set #rm_done_31 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Full Bestiary",desc:"All 96 companions have been discovered across the realm!",reward:"All players receive a Mythical Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
