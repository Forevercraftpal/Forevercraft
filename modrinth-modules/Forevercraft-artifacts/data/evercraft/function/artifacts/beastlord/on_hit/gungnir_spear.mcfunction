# Gungnir Spear (Exquisite) — On Hit: True Strike
# Guaranteed crit-like bonus damage with weakness debuff on target

# Find the entity we just hit
execute at @s as @e[type=!player,distance=..6,sort=nearest,limit=1,nbt={HurtTime:10s}] run function evercraft:artifacts/beastlord/on_hit/gungnir_spear_apply
