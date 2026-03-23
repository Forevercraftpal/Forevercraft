# Realm Milestone Complete: Slayers of the Deep — First boss killed
scoreboard players set #rm_done_9 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Slayers of the Deep",desc:"The realm's first world boss has been defeated!",reward:"All players receive a Mythical Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
