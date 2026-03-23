# Artisan Tome — Quest Complete!
# Grants XP reward, celebrates, advances to next quest

# Prevent double completion (if already inactive)
execute unless score @s ec.tq_active matches 1 run return fail

# Deactivate quest
scoreboard players set @s ec.tq_active 0

# === XP REWARD: Quest part N = N levels worth of mastery XP ===
scoreboard players operation #tq_xp ec.var = @s ec.tq_part

# Grant vanilla experience levels
execute store result score #tq_xp_grant ec.var run scoreboard players get @s ec.tq_part
function evercraft:craftforever/spirit_tools/tome/grant_xp

# Coin reward (part-scaled)
function evercraft:coins/tool_tome_reward

# === CELEBRATION ===
# Re-route to populate quest text in storage
function evercraft:craftforever/spirit_tools/tome/quests/route
function evercraft:craftforever/spirit_tools/tome/celebrate with storage evercraft:tq_temp

# Particles + sounds
execute at @s run particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 30
execute at @s run particle witch ~ ~1 ~ 0.3 0.3 0.3 0.05 15
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.0
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.2

# Milestone artifact rewards (Parts 25/50/75/100)
execute if score @s ec.tq_part matches 25 run loot give @s loot evercraft:artifacts/rare/main
execute if score @s ec.tq_part matches 25 run tellraw @s [{text:"  ★ ",color:"aqua"},{text:"Rare Artifact",color:"aqua",bold:true},{text:" — Tome Milestone 25!",color:"gray"}]
execute if score @s ec.tq_part matches 50 run loot give @s loot evercraft:artifacts/ornate/main
execute if score @s ec.tq_part matches 50 run tellraw @s [{text:"  ★ ",color:"dark_purple"},{text:"Ornate Artifact",color:"dark_purple",bold:true},{text:" — Tome Milestone 50!",color:"gray"}]
execute if score @s ec.tq_part matches 75 run loot give @s loot evercraft:artifacts/exquisite/main
execute if score @s ec.tq_part matches 75 run tellraw @s [{text:"  ★ ",color:"gold"},{text:"Exquisite Artifact",color:"gold",bold:true},{text:" — Tome Milestone 75!",color:"gold"}]
execute if score @s ec.tq_part matches 100 run loot give @s loot evercraft:artifacts/mythical/main
execute if score @s ec.tq_part matches 100 run tellraw @s [{text:"  ★ ",color:"light_purple"},{text:"Mythical Artifact",color:"light_purple",bold:true},{text:" — Tome Mastery!",color:"gold"}]

# === ADVANCE TO NEXT QUEST ===
scoreboard players add @s ec.tq_part 1
scoreboard players set @s ec.tq_progress 0

# === UPDATE TOME ITEM LORE ===
# Schedule for next tick (can't modify item during use)
tag @s add ec.tq_update_tome
schedule function evercraft:craftforever/spirit_tools/tome/update_tome 1t append

# === QUEST 100 SPECIAL FINALE ===
execute if score @s ec.tq_part matches 101 run function evercraft:craftforever/spirit_tools/tome/finale
