# Realm Milestone Complete: First Light — First patron slain
scoreboard players set #rm_done_1 ec.var 1
data modify storage evercraft:milestones temp set value {name:"First Light",desc:"The realm's first patron has been slain!",reward:"All players receive a Rare Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
