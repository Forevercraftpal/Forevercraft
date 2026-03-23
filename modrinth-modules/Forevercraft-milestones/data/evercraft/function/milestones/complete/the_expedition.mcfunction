# Realm Milestone Complete: The Expedition — 50% of players explored 15+ biomes
scoreboard players set #rm_done_25 ec.var 1
data modify storage evercraft:milestones temp set value {name:"The Expedition",desc:"Half the realm has explored 15 or more biomes!",reward:"All players receive an Exquisite Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
