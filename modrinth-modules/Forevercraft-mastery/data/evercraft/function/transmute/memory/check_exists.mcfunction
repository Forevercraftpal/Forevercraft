# Transmute Memory — Check if saved state exists for this player+table
# Sets #tx_has_save ec.var (nonzero = has saved deposits)
# Run as: player | Requires temp.player_key and temp.table_key set
$execute store result score #tx_has_save ec.var run data get storage evercraft:transmute sessions."$(player_key)"."$(table_key)".count
