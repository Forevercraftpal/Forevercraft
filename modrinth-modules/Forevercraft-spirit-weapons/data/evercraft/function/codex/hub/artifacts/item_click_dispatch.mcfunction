# Artifact Collection — Item Click Dispatch (Macro)
# Macro args from storage: clicked_art, art_tier
# Run as the player

# Wishing Star mode — redirect to selection GUI instead of info display
$execute if entity @s[tag=ec.wishing_star_active] run function evercraft:gacha/wishing_star/gui/item_select {art:"$(clicked_art)",tier:"$(art_tier)"}
execute if entity @s[tag=ec.wishing_star_active] run return 0

# Lucid Claim mode — redirect to spark selection GUI
$execute if entity @s[tag=ec.lucid_claim_active] run function evercraft:gacha/spark/gui/item_select {art:"$(clicked_art)",tier:"$(art_tier)"}
execute if entity @s[tag=ec.lucid_claim_active] run return 0

# If collected, show ability description
$execute if entity @s[advancements={evercraft:artifacts/collected/$(clicked_art)=true}] run function evercraft:codex/abilities/$(art_tier)/$(clicked_art)

# If not collected, show discovery message
$execute unless entity @s[advancements={evercraft:artifacts/collected/$(clicked_art)=true}] run tellraw @s {"text":"Discover this artifact to learn more.","color":"dark_gray","italic":true}

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
