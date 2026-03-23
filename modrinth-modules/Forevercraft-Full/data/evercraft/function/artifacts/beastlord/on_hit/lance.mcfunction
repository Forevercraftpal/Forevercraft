# Lance (Uncommon) — On Hit: Mark Target
# Marks the target with glowing so pets prioritize it during warp strikes

# Clear any previous mark
tag @e[tag=bl.marked] remove bl.marked

# Find and mark the entity we just hit
execute at @s as @e[type=!player,distance=..6,sort=nearest,limit=1,nbt={HurtTime:10s}] run function evercraft:artifacts/beastlord/on_hit/lance_apply
