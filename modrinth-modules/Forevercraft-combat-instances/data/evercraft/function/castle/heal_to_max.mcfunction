# Infinite Castle — Heal single entity to max HP
# Run as: the entity to heal
# Stores THIS entity's max_health then sets Health to match

execute store result storage evercraft:castle temp.max_hp float 1 run attribute @s max_health get
data modify entity @s Health set from storage evercraft:castle temp.max_hp
