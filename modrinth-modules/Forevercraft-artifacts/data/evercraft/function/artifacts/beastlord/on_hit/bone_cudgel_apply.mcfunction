# Bone Cudgel — Apply undead slayer bonus
# Runs as the hurt entity — only procs vs undead

# Check if target is undead
execute unless entity @s[type=#minecraft:undead] run return 0

# Bonus holy damage vs undead
damage @s 2 evercraft:bonus_strike

# Visual: soul fire burst (purifying flame)
execute at @s run particle soul_fire_flame ~ ~0.5 ~ 0.3 0.5 0.3 0.05 12

# Sound: smite
execute at @s run playsound minecraft:entity.zombie.villager_cure player @a ~ ~ ~ 0.5 1.8
