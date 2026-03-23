# Realm Milestone Complete: Quest Masters — 100 quests completed
scoreboard players set #rm_done_12 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Quest Masters",desc:"100 quests have been completed across the realm!",reward:"All players receive a Mythical Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
