# Apply Party Proximity Buffs
# Run as each player in a party with 1+ nearby members, at their position
# Buffs scale with ec.party_nearby (1-3)

# === DAMAGE RESISTANCE: +0.5 armor per nearby member (max +1.5) ===
# Remove old modifier first, then re-apply at correct tier
attribute @s armor modifier remove evercraft:party_dr
execute if score @s ec.party_nearby matches 1 run attribute @s armor modifier add evercraft:party_dr 0.5 add_value
execute if score @s ec.party_nearby matches 2 run attribute @s armor modifier add evercraft:party_dr 1.0 add_value
execute if score @s ec.party_nearby matches 3.. run attribute @s armor modifier add evercraft:party_dr 1.5 add_value

# === REGENERATION: Regen I (2s, refreshed every 1s) ===
# Subtle passive heal — keeps party members healthy between fights
effect give @s minecraft:regeneration 2 0 true

# === DREAM RATE: +0.25 luck per nearby member (max +0.75) ===
# Directly affects structure crate tier rolls via luck attribute
attribute @s luck modifier remove evercraft:party_luck
execute if score @s ec.party_nearby matches 1 run attribute @s luck modifier add evercraft:party_luck 0.25 add_value
execute if score @s ec.party_nearby matches 2 run attribute @s luck modifier add evercraft:party_luck 0.50 add_value
execute if score @s ec.party_nearby matches 3.. run attribute @s luck modifier add evercraft:party_luck 0.75 add_value
