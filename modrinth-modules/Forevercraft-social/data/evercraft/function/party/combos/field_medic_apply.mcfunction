# Field Medic — Heal nearby Taskmaster party members (macro)
# Arg: pid

# Heal 4 hearts (8 HP) via instant_health and Regen I for 5s
$execute as @a[scores={ec.party_id=$(pid),adv.taskmaster=10..},distance=..48] run effect give @s minecraft:instant_health 1 1 true
$execute as @a[scores={ec.party_id=$(pid),adv.taskmaster=10..},distance=..48] run effect give @s minecraft:regeneration 5 0 true
# Golden heart particles on healed players
$execute at @a[scores={ec.party_id=$(pid),adv.taskmaster=10..},distance=..48] run particle minecraft:heart ~ ~2 ~ 0.5 0.5 0.5 0 5 force

# Track for achievements
scoreboard players add @s ach.combos_triggered 1

# Grant affinity XP for triggering a party combo
scoreboard players set #delta ec.temp 3000
function evercraft:affinity/grant_current
