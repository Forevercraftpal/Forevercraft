# Lucid Claim — Reset any highlighted artifact back to its normal text
# Run as @s = player

# Bail if nothing is highlighted
execute unless entity @e[type=text_display,tag=ec.Confirming,tag=Adv.ArtItems,distance=..10,limit=1] run return 0

# Remove confirming tag
tag @e[type=text_display,tag=ec.Confirming,tag=Adv.ArtItems,distance=..10] remove ec.Confirming

# Re-run refresh to restore proper names
function evercraft:gacha/spark/gui/refresh
