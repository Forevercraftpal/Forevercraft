# Happy Ghast — Assign Owner ID to player
# @p = player who doesn't have a ghast.owner yet

scoreboard players operation @p ghast.owner = #ghast_owner_next ghast.owner
scoreboard players add #ghast_owner_next ghast.owner 1
