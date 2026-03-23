# Tomb System — Drop 50% XP as Orbs
# #tomb_xp ec.temp = levels to drop (already halved)
# Spawn experience orbs at grave location

# Convert levels to approximate XP points and spawn orbs
# Simple approach: spawn orbs worth ~10 XP each, up to the level value * 7 (rough average)
# This gives a reasonable scatter of orbs

# Spawn a handful of XP orbs based on level count
# Each orb gives some XP — Minecraft auto-merges nearby orbs
execute if score #tomb_xp ec.temp matches 1.. run summon experience_orb ~ ~0.5 ~ {Value:50s}
execute if score #tomb_xp ec.temp matches 5.. run summon experience_orb ~ ~0.5 ~ {Value:100s}
execute if score #tomb_xp ec.temp matches 10.. run summon experience_orb ~ ~0.5 ~ {Value:200s}
execute if score #tomb_xp ec.temp matches 15.. run summon experience_orb ~ ~0.5 ~ {Value:300s}
execute if score #tomb_xp ec.temp matches 20.. run summon experience_orb ~ ~0.5 ~ {Value:500s}
execute if score #tomb_xp ec.temp matches 30.. run summon experience_orb ~ ~0.5 ~ {Value:700s}
execute if score #tomb_xp ec.temp matches 40.. run summon experience_orb ~ ~0.5 ~ {Value:1000s}
execute if score #tomb_xp ec.temp matches 50.. run summon experience_orb ~ ~0.5 ~ {Value:1500s}
