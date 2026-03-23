# Realm Milestone Complete: The Hundred — 100 patron kills realm-wide
scoreboard players set #rm_done_27 ec.var 1
data modify storage evercraft:milestones temp set value {name:"The Hundred",desc:"100 patrons have been slain across the realm!",reward:"All players receive an Exquisite Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
