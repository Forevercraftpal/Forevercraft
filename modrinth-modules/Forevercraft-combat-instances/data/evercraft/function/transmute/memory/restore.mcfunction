# Transmute Memory — Restore player's deposit state from storage
# Run as: player | Requires temp.player_key and temp.table_key set
$execute store result score @s tx.count run data get storage evercraft:transmute sessions."$(player_key)"."$(table_key)".count
$execute store result score @s tx.tier run data get storage evercraft:transmute sessions."$(player_key)"."$(table_key)".tier
$execute store result score @s tx.required run data get storage evercraft:transmute sessions."$(player_key)"."$(table_key)".required
$execute store result score @s tx.has_disc run data get storage evercraft:transmute sessions."$(player_key)"."$(table_key)".has_disc
$execute store result score @s tx.half run data get storage evercraft:transmute sessions."$(player_key)"."$(table_key)".half
