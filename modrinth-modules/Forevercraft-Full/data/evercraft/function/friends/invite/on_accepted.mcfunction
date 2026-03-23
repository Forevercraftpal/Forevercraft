# Friend Invite — Notify sender that their request was accepted
# @s = sender player (found by UUID3 match)

scoreboard players add @s ec.fr_count 1
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your friend request was accepted!",color:"green"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
