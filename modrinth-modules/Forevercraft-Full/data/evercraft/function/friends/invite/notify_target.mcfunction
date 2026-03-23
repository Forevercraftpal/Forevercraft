# Friend Invite — Notify target of incoming friend request
# @s = target player, sender's UUID3 stored in ec.fr_target on @s
# Sender companion.id in storage evercraft:friends temp.sender_cid

function evercraft:friends/invite/notify_target_msg with storage evercraft:friends temp

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5

# Tag pending
tag @s add ec.fr_pending
