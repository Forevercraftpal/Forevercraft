# The Ashen Lord — Wither Skull Attack
# Called as boss entity at boss position
# Deals 3 damage + Wither I for 3s to a random participant

# Target a random participant
execute as @a[tag=ec.rd_participant,sort=random,limit=1] at @s run function evercraft:raids/boss/ashen_lord/abilities/wither_skull_hit
