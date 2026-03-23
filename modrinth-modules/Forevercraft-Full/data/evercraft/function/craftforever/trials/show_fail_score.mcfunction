# Show final score on failure (macro)
$tellraw @s [{"text":"Final score: ","color":"gray"},{"text":"$(score)/$(target)","color":"red"}]
