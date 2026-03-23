# Realm Milestone Complete: Seasoned Chefs — 10 recipes cooked
scoreboard players set #rm_done_7 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Seasoned Chefs",desc:"The realm has mastered 10 unique recipes!",reward:"All players receive an Exquisite Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
