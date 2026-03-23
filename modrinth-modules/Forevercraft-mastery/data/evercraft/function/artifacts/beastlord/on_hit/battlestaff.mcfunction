# Battlestaff (Rare) — On Hit: Swift Strikes Combo
# Every 3rd hit deals bonus damage

# Increment combo counter
scoreboard players add @s ec.bl_combo 1

# Check for 3-hit combo
execute unless score @s ec.bl_combo matches 3.. run return 0

# === COMBO BURST (3rd hit) ===
scoreboard players set @s ec.bl_combo 0

# Find target and apply burst damage
execute at @s as @e[type=!player,distance=..6,sort=nearest,limit=1,nbt={HurtTime:10s}] run function evercraft:artifacts/beastlord/on_hit/battlestaff_burst
