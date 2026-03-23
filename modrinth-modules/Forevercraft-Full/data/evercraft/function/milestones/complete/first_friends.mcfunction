# Realm Milestone Complete: First Friends — 10 friendships formed
scoreboard players set #rm_done_13 ec.var 1
data modify storage evercraft:milestones temp set value {name:"First Friends",desc:"10 friendships have been forged across the realm!",reward:"All players receive an Ornate Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
