# Grand Forge — Catalyst right-click handler
# consume_item fires BEFORE item removal — must restore after 1 tick

advancement revoke @s only evercraft:craftforever/grand_forge/use_catalyst

# Already in a forge run
execute if score @s ec.gf_active matches 1 run return run tellraw @s [{"text":"The Grand Forge is already active!","color":"red"}]

# Artisan Rank 15+ required
execute unless score @s ec.cf_rank matches 15.. run return run tellraw @s [{"text":"  ","color":"dark_gray"},{"text":"NOT READY","color":"red","bold":true},{"text":" — Reach Artisan Rank ","color":"gray"},{"text":"15","color":"gold","bold":true},{"text":" first!","color":"gray"}]

# Tag for 1-tick restore (catalyst is consumed on use — restore it since it's reusable)
tag @s add ec.gf_restore
schedule function evercraft:craftforever/grand_forge/restore_catalyst 1t append

# Start the forge
function evercraft:craftforever/grand_forge/start
