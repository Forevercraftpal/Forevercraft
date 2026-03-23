# Realm Milestone Complete: United Front — First guild alliance formed
scoreboard players set #rm_done_20 ec.var 1
data modify storage evercraft:milestones temp set value {name:"United Front",desc:"The first guild alliance has been forged!",reward:"Ornate Crate + permanent +0.3 DR realm bonus"}
function evercraft:milestones/announce with storage evercraft:milestones temp
function evercraft:milestones/complete/apply_dr_bonus {amount:3}
