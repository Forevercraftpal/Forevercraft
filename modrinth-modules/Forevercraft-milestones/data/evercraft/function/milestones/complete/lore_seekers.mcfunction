# Realm Milestone Complete: Lore Seekers — 50 lore pieces
scoreboard players set #rm_done_8 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Lore Seekers",desc:"50 lore collections completed across the realm!",reward:"All players receive an Exquisite Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
