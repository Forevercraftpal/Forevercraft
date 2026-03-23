# Realm Milestone Complete: Guild Dominion — 10,000 total guild contributions
scoreboard players set #rm_done_22 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Guild Dominion",desc:"10,000 total guild contributions across the realm!",reward:"Exquisite Crate + permanent +1.0 DR realm bonus"}
function evercraft:milestones/announce with storage evercraft:milestones temp
function evercraft:milestones/complete/apply_dr_bonus {amount:10}
