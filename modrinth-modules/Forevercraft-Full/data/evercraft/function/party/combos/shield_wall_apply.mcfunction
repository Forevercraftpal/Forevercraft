# Shield Wall — Grant guaranteed dodge to Evasion party members (macro)
# Arg: pid

# Give all nearby evasion 10+ party members a guaranteed dodge (5s = 100 ticks)
# Uses the existing evasion P3 dodge timer scoreboard
$execute as @a[scores={ec.party_id=$(pid),adv.evasion=10..},distance=..48] run scoreboard players set @s adv.pa_evas3_tm 100

# Track for achievements
scoreboard players add @s ach.combos_triggered 1

# Grant affinity XP for triggering a party combo
scoreboard players set #delta ec.temp 3000
function evercraft:affinity/grant_current
