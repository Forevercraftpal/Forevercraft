# Night Terrors — Terror has been defeated
# Run as player who had the active terror

# Clear active state
scoreboard players set @s ec.nt_active 0

# Set 30-minute cooldown (30 decrements at 1 per minute)
scoreboard players set @s ec.nt_cd 30

# Kill any remaining minions
kill @e[tag=ec.nt_minion,distance=..100]

# Read DR for loot tier
execute store result score @s ec.temp run attribute @s luck get 10

# Drop loot based on DR tier
# DR 30-34: Ornate crate + 1 Nightmare Shard
execute if score @s ec.temp matches 300..349 run loot give @s loot evercraft:night_terrors/tier_ornate
execute if score @s ec.temp matches 300..349 run loot give @s loot evercraft:night_terrors/nightmare_shard

# DR 35-39: Exquisite crate + 2 Nightmare Shards
execute if score @s ec.temp matches 350..399 run loot give @s loot evercraft:night_terrors/tier_exquisite
execute if score @s ec.temp matches 350..399 run loot give @s loot evercraft:night_terrors/nightmare_shard
execute if score @s ec.temp matches 350..399 run loot give @s loot evercraft:night_terrors/nightmare_shard

# DR 40-44: Exquisite + 25% Mythical + 3 Nightmare Shards
execute if score @s ec.temp matches 400..449 run loot give @s loot evercraft:night_terrors/tier_exquisite
execute if score @s ec.temp matches 400..449 store result score #nt_myth_roll ec.var run random value 1..4
execute if score @s ec.temp matches 400..449 if score #nt_myth_roll ec.var matches 1 run loot give @s loot evercraft:night_terrors/tier_mythical
execute if score @s ec.temp matches 400..449 run loot give @s loot evercraft:night_terrors/nightmare_shard
execute if score @s ec.temp matches 400..449 run loot give @s loot evercraft:night_terrors/nightmare_shard
execute if score @s ec.temp matches 400..449 run loot give @s loot evercraft:night_terrors/nightmare_shard

# DR 45-50: Mythical + 5 Nightmare Shards
execute if score @s ec.temp matches 450.. run loot give @s loot evercraft:night_terrors/tier_mythical
execute if score @s ec.temp matches 450.. run loot give @s loot evercraft:night_terrors/nightmare_shard
execute if score @s ec.temp matches 450.. run loot give @s loot evercraft:night_terrors/nightmare_shard
execute if score @s ec.temp matches 450.. run loot give @s loot evercraft:night_terrors/nightmare_shard
execute if score @s ec.temp matches 450.. run loot give @s loot evercraft:night_terrors/nightmare_shard
execute if score @s ec.temp matches 450.. run loot give @s loot evercraft:night_terrors/nightmare_shard

# World Milestones — mythical artifact found (DR 40-44 with lucky roll, or DR 45+)
execute if score @s ec.temp matches 400..449 if score #nt_myth_roll ec.var matches 1 run function evercraft:milestones/increment/mythical_found
execute if score @s ec.temp matches 450.. run function evercraft:milestones/increment/mythical_found

# Companion memory: Mythical Discovery (night terror mythical drop)
execute if score @s ec.temp matches 400..449 if score #nt_myth_roll ec.var matches 1 if entity @s[tag=companion.activepet] run function evercraft:companions/memories/on_mythical_artifact
execute if score @s ec.temp matches 450.. if entity @s[tag=companion.activepet] run function evercraft:companions/memories/on_mythical_artifact

# XP reward
experience add @s 200 points

# Announcement
tellraw @a [{text:"  ",color:"dark_red"},{selector:"@s",color:"gold",bold:true},{text:" has conquered a Night Terror!",color:"dark_red"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1.0 1.0
title @s subtitle {text:"The nightmare fades...",color:"gold"}
title @s title {text:"",color:"gold"}

# Achievement tracking
scoreboard players add @s ec.nt_kills 1
