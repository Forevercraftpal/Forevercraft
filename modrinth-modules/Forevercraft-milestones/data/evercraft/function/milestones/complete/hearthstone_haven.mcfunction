# Realm Milestone Complete: Hearthstone Haven — 75% of players have homes
scoreboard players set #rm_done_26 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Hearthstone Haven",desc:"The realm is becoming a home for all!",reward:"All players receive an Ornate Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
