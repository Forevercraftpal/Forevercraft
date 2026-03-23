# Artisan Tome — Activate current quest
# Sets up tracking based on quest part, snapshots relevant stat, shows quest info

# Reset progress
scoreboard players set @s ec.tq_progress 0

# Route to set type, target, subtype, and quest text for current part
function evercraft:craftforever/spirit_tools/tome/quests/route

# Snapshot the relevant stat for delta-tracking quests (type 1)
execute if score @s ec.tq_type matches 1 run function evercraft:craftforever/spirit_tools/tome/quests/snapshot

# Mark quest as active with grace period (skip 2 check cycles to prevent instant completion)
scoreboard players set @s ec.tq_active 1
scoreboard players set @s ec.tq_grace 2

# Show quest info
function evercraft:craftforever/spirit_tools/tome/quests/show_quest

playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.6 1.3
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5
