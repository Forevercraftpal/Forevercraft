# Boneclub (Common) — On Hit: Minor Knockback
# Staggers the target with slowness and bonus damage

# Find the entity we just hit
execute at @s as @e[type=!player,distance=..6,sort=nearest,limit=1,nbt={HurtTime:10s}] run function evercraft:artifacts/beastlord/on_hit/boneclub_apply
