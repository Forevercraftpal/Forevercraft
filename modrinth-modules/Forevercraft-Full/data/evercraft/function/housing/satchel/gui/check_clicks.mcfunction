# ============================================================
# House Key GUI — Check Clicks
# Run as: player with HS.InSatchel
# ============================================================

# Close button
execute as @e[type=interaction,tag=HS.SatchelCloseBtn,distance=..5] if data entity @s interaction run function evercraft:housing/satchel/gui/click_close

# Quick Stash button
execute as @e[type=interaction,tag=HS.SatchelStashBtn,distance=..5] if data entity @s interaction run function evercraft:housing/satchel/gui/click_stash

# Stash Settings button
execute as @e[type=interaction,tag=HS.SatchelSettingsBtn,distance=..5] if data entity @s interaction run function evercraft:housing/satchel/gui/click_settings
