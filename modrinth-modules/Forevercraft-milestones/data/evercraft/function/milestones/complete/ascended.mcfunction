# Realm Milestone Complete: Ascended — 50% of players reached DR 20+
scoreboard players set #rm_done_28 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Ascended",desc:"Half the realm has ascended to DR 20 or higher!",reward:"Mythical Crate + permanent +0.5 DR realm bonus"}
function evercraft:milestones/announce with storage evercraft:milestones temp
function evercraft:milestones/complete/apply_dr_bonus {amount:5}
