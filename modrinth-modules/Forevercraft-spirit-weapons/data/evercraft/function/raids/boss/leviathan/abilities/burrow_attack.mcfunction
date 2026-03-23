# The Leviathan — Burrow Attack
# Boss "burrows" into floor, erupts under random player
# 10 damage + launch upward

# Pick a random target
execute as @a[tag=ec.rd_participant,sort=random,limit=1] at @s run function evercraft:raids/boss/leviathan/abilities/burrow_erupt
