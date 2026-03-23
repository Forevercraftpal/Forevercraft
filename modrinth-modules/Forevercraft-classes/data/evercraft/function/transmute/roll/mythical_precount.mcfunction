# Mythical Reroll — Pre-count deposited artifacts in player inventory (macro)
# Called with storage evercraft:transmute temp (keys: mythical_1, mythical_2)

$execute store result score #tx_pre1 ec.var run clear @s *[custom_data~{artifact:"$(mythical_1)"}] 0
$execute store result score #tx_pre2 ec.var run clear @s *[custom_data~{artifact:"$(mythical_2)"}] 0
