# Realm Milestone Complete: Banner Raised — First guild created
scoreboard players set #rm_done_18 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Banner Raised",desc:"The realm's first guild has been founded!",reward:"All players receive a Rare Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
