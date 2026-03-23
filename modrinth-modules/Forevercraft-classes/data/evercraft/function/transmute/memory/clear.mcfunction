# Transmute Memory — Clear saved state for this player+table
# Called after successful transmutation
# Requires temp.player_key and temp.table_key set
$data remove storage evercraft:transmute sessions."$(player_key)"."$(table_key)"
