# Realm Milestone Complete: Bounty Board Legends — 100 bounties completed
scoreboard players set #rm_done_24 ec.var 1
data modify storage evercraft:milestones temp set value {name:"Bounty Board Legends",desc:"100 bounties have been completed across the realm!",reward:"All players receive an Ornate Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
