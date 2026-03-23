# Mob Crates - Spawn Ornate Crate (Dream Rate >= 5 verified)
# Barrel already placed by spawn/ornate.mcfunction

# Fill barrel with ornate loot and set name
loot insert ~ ~ ~ loot evercraft:mob_crates/ornate
function evercraft:bosses/totem/roll_crate_drop
function evercraft:structures/container/shuffle_barrel
data merge block ~ ~ ~ {CustomName:{text:"Ornate Mob Crate",color:"dark_purple",italic:false}}

# Grant XP to nearest player
experience add @p 100 points
execute as @p[distance=..10,scores={adv.victorian=1..}] run scoreboard players set #base_crate_xp adv.temp 100
execute as @p[distance=..10,scores={adv.victorian=1..}] run function evercraft:advantage/victorian/apply_bonus

# Spawn animation display (ornate skin — align to barrel block position)
execute align xyz run function evercraft:crate_anim/spawn_display {tier:"ornate",system_tag:"mob_crate",plot_start:20,skin:"ewogICJ0aW1lc3RhbXAiIDogMTc3Mzc4ODY0NTQzOSwKICAicHJvZmlsZUlkIiA6ICI3YTVkYmRlNDk0NWU0YTE4Yjg2OWY1MGY1NTJjNjlkYiIsCiAgInByb2ZpbGVOYW1lIiA6ICJCdWtraXRBUEkiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmM4MDNkNGI5OTc1MGFiZTc0NzY2ZWZiMjYwZjI2YmY0Mjk0MTlhZWVlYWRlMWNkMTE5MjU1NzZmOTY4OTRhMiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}
