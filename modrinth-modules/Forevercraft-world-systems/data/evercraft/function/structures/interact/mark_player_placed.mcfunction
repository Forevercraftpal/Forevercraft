# Mark this position as player-placed
# Summon a marker entity at the block position to track it
# This prevents the fallback tier from triggering on player-placed chests

# Align to block center and summon marker
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["cf.player_placed"]}

# Reset raycast counter
scoreboard players set @s cf.temp 0
