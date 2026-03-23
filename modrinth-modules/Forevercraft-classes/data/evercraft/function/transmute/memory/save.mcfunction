# Transmute Memory — Save player's deposit state to storage
# Run as: player | Requires temp.player_key and temp.table_key set
$execute store result storage evercraft:transmute sessions."$(player_key)"."$(table_key)".count int 1 run scoreboard players get @s tx.count
$execute store result storage evercraft:transmute sessions."$(player_key)"."$(table_key)".tier int 1 run scoreboard players get @s tx.tier
$execute store result storage evercraft:transmute sessions."$(player_key)"."$(table_key)".required int 1 run scoreboard players get @s tx.required
$execute store result storage evercraft:transmute sessions."$(player_key)"."$(table_key)".has_disc int 1 run scoreboard players get @s tx.has_disc
$execute store result storage evercraft:transmute sessions."$(player_key)"."$(table_key)".half int 1 run scoreboard players get @s tx.half
