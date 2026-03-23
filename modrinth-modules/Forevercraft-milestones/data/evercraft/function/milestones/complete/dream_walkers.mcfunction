# Realm Milestone Complete: Dream Walkers — 50 Dreaming Realm completions
scoreboard players set #rm_done_23 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Dream Walkers",desc:"50 dreams have been conquered across the realm!",reward:"All players receive an Exquisite Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
