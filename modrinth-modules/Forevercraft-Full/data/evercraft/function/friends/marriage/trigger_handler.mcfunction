# Marriage System — Trigger handler
# @s = player, ec.fr_marry values:
#   positive UUID3 = propose to that friend
#   1 = accept pending proposal
#   -1 = decline pending proposal
#   -2 = divorce

execute if score @s ec.fr_marry matches -2 run function evercraft:friends/marriage/divorce
execute if score @s ec.fr_marry matches -1 if entity @s[tag=ec.fr_marry_pending] run function evercraft:friends/marriage/decline
execute if score @s ec.fr_marry matches 1 if entity @s[tag=ec.fr_marry_pending] run function evercraft:friends/marriage/accept
execute if score @s ec.fr_marry matches 2.. run function evercraft:friends/marriage/propose

# Reset trigger
scoreboard players set @s ec.fr_marry 0
scoreboard players enable @s ec.fr_marry
