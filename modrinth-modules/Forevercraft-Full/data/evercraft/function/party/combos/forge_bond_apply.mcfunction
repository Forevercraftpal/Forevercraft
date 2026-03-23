# Forge Bond — Grant bonus XP to Dexterity ally (macro)
# Arg: pid

# Give Dexterity allies 50 placement stat (XP toward Dexterity tree)
$execute as @a[scores={ec.party_id=$(pid),adv.dexterity=10..},distance=..16] run scoreboard players add @s adv.stat_place 50
$execute at @a[scores={ec.party_id=$(pid),adv.dexterity=10..},distance=..16] run particle minecraft:lava ~ ~1 ~ 0.3 0.3 0.3 0 5 force

# Track for achievements
scoreboard players add @s ach.combos_triggered 1

# Grant affinity XP for triggering a party combo
scoreboard players set #delta ec.temp 3000
function evercraft:affinity/grant_current
