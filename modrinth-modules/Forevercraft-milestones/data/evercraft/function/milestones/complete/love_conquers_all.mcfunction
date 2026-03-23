# Realm Milestone Complete: Love Conquers All — 2 married couples
scoreboard players set #rm_done_16 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Love Conquers All",desc:"Two couples have found eternal love in the realm!",reward:"Exquisite Crate + realm luck bonus near spouse"}
function evercraft:milestones/announce with storage evercraft:milestones temp
