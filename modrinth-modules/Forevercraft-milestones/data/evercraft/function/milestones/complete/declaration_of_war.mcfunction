# Realm Milestone Complete: Declaration of War — First guild war declared
scoreboard players set #rm_done_19 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Declaration of War",desc:"The first guild war has been declared!",reward:"All players receive an Exquisite Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
