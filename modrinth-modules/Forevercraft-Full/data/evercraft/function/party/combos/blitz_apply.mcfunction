# Blitz — Apply attack speed boost to Victorian party members (macro)
# Arg: pid

# Give Haste I for 6s (attack speed boost) to nearby Victorian 10+ members
$execute as @a[scores={ec.party_id=$(pid),adv.victorian=10..},distance=..48] run effect give @s minecraft:haste 6 0 true

# Track for achievements
scoreboard players add @s ach.combos_triggered 1

# Grant affinity XP for triggering a party combo
scoreboard players set #delta ec.temp 3000
function evercraft:affinity/grant_current
