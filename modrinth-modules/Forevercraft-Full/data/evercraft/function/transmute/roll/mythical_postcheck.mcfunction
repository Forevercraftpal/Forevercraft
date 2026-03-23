# Mythical Reroll — Post-check for duplicate roll (macro)
# If the rolled artifact matches a deposited one, clear it and reroll
# Early return after first match prevents double-clear when both IDs are the same
# Called with storage evercraft:transmute temp (keys: mythical_1, mythical_2)

# Check if we received a copy of deposited artifact 1
scoreboard players set #tx_match ec.var 0
$execute store result score #tx_post ec.var run clear @s *[custom_data~{artifact:"$(mythical_1)"}] 0
execute unless score #tx_pre1 ec.var = #tx_post ec.var run scoreboard players set #tx_match ec.var 1
$execute if score #tx_match ec.var matches 1 run clear @s *[custom_data~{artifact:"$(mythical_1)"}] 1
execute if score #tx_match ec.var matches 1 run function evercraft:transmute/roll/give_mythical_result
execute if score #tx_match ec.var matches 1 run return 1

# Check if we received a copy of deposited artifact 2
$execute store result score #tx_post ec.var run clear @s *[custom_data~{artifact:"$(mythical_2)"}] 0
execute unless score #tx_pre2 ec.var = #tx_post ec.var run scoreboard players set #tx_match ec.var 1
$execute if score #tx_match ec.var matches 1 run clear @s *[custom_data~{artifact:"$(mythical_2)"}] 1
execute if score #tx_match ec.var matches 1 run function evercraft:transmute/roll/give_mythical_result
