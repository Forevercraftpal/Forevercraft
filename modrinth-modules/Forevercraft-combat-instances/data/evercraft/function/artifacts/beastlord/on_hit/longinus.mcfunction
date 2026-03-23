# Longinus (Mythical) — On Hit: Holy Pierce
# Deals armor-ignoring magic damage

# Find the entity we just hit
execute at @s as @e[type=!player,distance=..6,sort=nearest,limit=1,nbt={HurtTime:10s}] run function evercraft:artifacts/beastlord/on_hit/longinus_apply
