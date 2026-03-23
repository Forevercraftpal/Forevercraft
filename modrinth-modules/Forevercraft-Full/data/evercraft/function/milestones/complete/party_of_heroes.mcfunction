# Realm Milestone Complete: Party of Heroes — 4+ party defeats a boss
scoreboard players set #rm_done_30 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Party of Heroes",desc:"A full party of heroes has slain a world boss together!",reward:"All players receive an Exquisite Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
