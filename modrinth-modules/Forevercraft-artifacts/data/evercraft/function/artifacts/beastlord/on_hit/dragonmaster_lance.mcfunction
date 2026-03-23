# Dragonmaster Lance (Mythical) — On Hit: Dragon Pierce
# Massive bonus damage vs End-type mobs, moderate bonus vs everything else

# Find the entity we just hit
execute at @s as @e[type=!player,distance=..6,sort=nearest,limit=1,nbt={HurtTime:10s}] run function evercraft:artifacts/beastlord/on_hit/dragonmaster_lance_apply
