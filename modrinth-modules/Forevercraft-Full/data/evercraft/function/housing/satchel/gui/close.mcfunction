# ============================================================
# House Key GUI — Close
# Run as: player
# ============================================================

execute unless entity @s[tag=HS.InSatchel] run return 0

# Kill all satchel menu elements near the player
kill @e[type=item_display,tag=HS.SatchelEl,distance=..7]
kill @e[type=text_display,tag=HS.SatchelEl,distance=..7]
kill @e[type=interaction,tag=HS.SatchelEl,distance=..7]

# Remove tags
tag @s remove HS.InSatchel
tag @s remove HS.InSettings

# Sound
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.3 0.8
