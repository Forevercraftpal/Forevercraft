# Friend Invite — Decline friend request
# @s = declining player

tag @s remove ec.fr_pending
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Friend request declined.",color:"gray"}]
scoreboard players set @s ec.fr_target 0
