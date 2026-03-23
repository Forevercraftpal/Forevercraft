# Realm Milestone Complete: Conquest — A guild has won 3 wars
scoreboard players set #rm_done_21 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Conquest",desc:"A guild has proven its dominance with 3 war victories!",reward:"All players receive a Mythical Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
