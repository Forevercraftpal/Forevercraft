# Lucid Claim — Open the artifact selection GUI
# Runs as @s = player, at @s
# Called from fountain menu button click

# Validate spark is ready
execute unless score @s ec.wish_spark matches 50.. run return run tellraw @s [{"text":"★ ","color":"gray"},{"text":"Lucid Claim not ready! ","color":"red"},{"text":"Progress: ","color":"gray"},{"score":{"name":"@s","objective":"ec.wish_spark"},"color":"gold"},{"text":"/50 pulls","color":"gray"},{"text":" ★","color":"gray"}]

# Close fountain menu first
function evercraft:gacha/fountain/menu/close

# Tag for lucid claim mode
tag @s add ec.lucid_claim_active

# Open the codex shell — setup_codex will be called at the end of open
function evercraft:codex/hub/open
