# Friend System — Trigger handler for friend invite accept/decline
# @s = player who triggered ec.fr_invite

# Accept friend request
execute if score @s ec.fr_invite matches 1 if entity @s[tag=ec.fr_pending] run function evercraft:friends/invite/accept

# Decline friend request
execute if score @s ec.fr_invite matches -1 if entity @s[tag=ec.fr_pending] run function evercraft:friends/invite/decline

# Reset trigger
scoreboard players set @s ec.fr_invite 0
scoreboard players enable @s ec.fr_invite
