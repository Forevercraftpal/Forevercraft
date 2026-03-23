# Rally Cry — Apply +2 Dream Rate to party members (macro)
# Arg: pid

# Set rally DR timer to 6000 ticks (5 real-time minutes)
# The dream rate calc reads ec.pc_rally_dr > 0 to add +2 temporary DR
$execute as @a[scores={ec.party_id=$(pid)},distance=..48] run scoreboard players set @s ec.pc_rally_dr 6000

# Track for achievements
scoreboard players add @s ach.combos_triggered 1

# Grant affinity XP for triggering a party combo
scoreboard players set #delta ec.temp 3000
function evercraft:affinity/grant_current
