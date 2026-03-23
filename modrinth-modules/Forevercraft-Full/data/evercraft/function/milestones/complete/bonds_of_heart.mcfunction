# Realm Milestone Complete: Bonds of the Heart — 20 friendship level-ups
scoreboard players set #rm_done_14 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Bonds of the Heart",desc:"20 friendships have deepened across the realm!",reward:"Exquisite Crate + permanent +0.5 DR realm bonus"}
function evercraft:milestones/announce with storage evercraft:milestones temp
function evercraft:milestones/complete/apply_dr_bonus {amount:5}
