# Bone Cudgel (Rare) — On Hit: Undead Slayer
# Deals +30% bonus damage against undead mobs

# Find the entity we just hit
execute at @s as @e[type=!player,distance=..6,sort=nearest,limit=1,nbt={HurtTime:10s}] run function evercraft:artifacts/beastlord/on_hit/bone_cudgel_apply
