# Realm Milestone Complete: The Gilded Realm — 5,000 Forever Coins earned
scoreboard players set #rm_done_33 ec.var 1
data modify storage evercraft:milestones temp set value {name:"The Gilded Realm",desc:"5,000 Forever Coins have been earned across the realm!",reward:"All players receive an Exquisite Crate"}
function evercraft:milestones/announce with storage evercraft:milestones temp
