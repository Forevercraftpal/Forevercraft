# Macro: check if an online leader exists for this party
# Arg: pid (party ID)
# Run as a party member

# Count online leaders with this party ID
$execute store result score #pldr ec.temp if entity @a[scores={ec.party_id=$(pid),ec.party_role=1}]

# If no leader online, increment disconnect timer
execute if score #pldr ec.temp matches 0 run scoreboard players add @s ec.party_ldr_dc 20

# If leader is online, reset timer
execute if score #pldr ec.temp matches 1.. run scoreboard players set @s ec.party_ldr_dc 0

# If timer exceeds 5 minutes (6000 ticks), promote this member to leader
# Re-check no leader exists right before promoting (prevents dual-leader race if 2 members hit 6000 same tick)
$execute if score @s ec.party_ldr_dc matches 6000.. unless entity @a[scores={ec.party_id=$(pid),ec.party_role=1}] run function evercraft:party/promote_self
# Reset timer regardless (if another member promoted first, this prevents re-triggering)
execute if score @s ec.party_ldr_dc matches 6000.. run scoreboard players set @s ec.party_ldr_dc 0
