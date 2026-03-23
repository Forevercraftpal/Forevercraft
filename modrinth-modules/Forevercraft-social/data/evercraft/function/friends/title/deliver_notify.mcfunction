# Friend Title — Deliver delayed title notification to target
# @s = target player
# Macro args: title, from_uuid3, from_cid, set_at

# Notify: "[Friends] <player> sees you as their <title>!"
$execute if data storage evercraft:friends {temp:{pending:{title:"friend"}}} run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{selector:"@a[scores={companion.id=$(from_cid)},limit=1]",color:"yellow"},{text:" reset your title to ",color:"light_purple"},{text:"Friend",color:"gray"},{text:".",color:"light_purple"}]

execute unless data storage evercraft:friends {temp:{pending:{title:"friend"}}} run function evercraft:friends/title/deliver_notify_msg with storage evercraft:friends temp.pending

execute unless data storage evercraft:friends {temp:{pending:{title:"friend"}}} run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.3 1.5
