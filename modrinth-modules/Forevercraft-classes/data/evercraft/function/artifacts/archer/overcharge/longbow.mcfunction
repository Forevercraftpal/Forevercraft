# Longbow — PREDATOR (Uncommon)
# Mark Arrow: target gets Glowing 10s, player deals +50% damage to marked target
# Uses tag to track marked entity
# @s = player

# Remove old mark
tag @e[tag=ec.ar_marked] remove ec.ar_marked

# Mark the just-hit entity
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run tag @s add ec.ar_marked
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] run effect give @s glowing 200 0 false

# Feedback
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5
execute as @e[tag=ec.ar_marked] at @s run particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 20
tellraw @s [{"text":"[Longbow] ","color":"blue"},{"text":"Predator ","color":"yellow","bold":true},{"text":"— Target marked! +50% arrow damage for 10s","color":"gold"}]
