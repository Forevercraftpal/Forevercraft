# Realm Milestone Complete: Brave New World — 5 biomes explored
scoreboard players set #rm_done_3 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Brave New World",desc:"Five unique biomes have been explored!",reward:"All players receive a Common Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
