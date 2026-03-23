# ============================================================
# Player Housing System — Load
# Place a Hearthstone (lodestone) → claims 64x64 area
# Right-click → entity GUI for tier upgrades (netherite ingots)
# Tier buffs while in your home zone + 3x3 chunk loading
# Auto-registers as Guidestone destination
# ============================================================

# Per-player home state
scoreboard objectives add hs.tier dummy "Home Tier (0=none, 1-5)"
scoreboard objectives add hs.home_x dummy "Home X"
scoreboard objectives add hs.home_y dummy "Home Y"
scoreboard objectives add hs.home_z dummy "Home Z"
scoreboard objectives add hs.home_dim dummy "Home Dim (0=OW,1=N,2=E)"
scoreboard objectives add hs.in_zone dummy "In Home Zone"
scoreboard objectives add hs.gs_id dummy "Home Guidestone ID"
scoreboard objectives add hs.temp dummy "Housing Temp"
scoreboard objectives add hs.decor dummy "Decoration Score"
scoreboard objectives add hs.stashed dummy "Items Stashed"
scoreboard objectives add hs.failed dummy "Items Failed"
scoreboard objectives add hs.menu_time dummy "Hearthstone Menu Inactivity"
scoreboard objectives add hs.warp_cd dummy "Home Pet Warp Cooldown"
scoreboard objectives add hs.visitors dummy "Total Unique Visitors"
scoreboard objectives add hs.visit_today dummy "Visitors Today"
scoreboard objectives add hs.visit_cd dummy "Visitor Notify Cooldown"

# Hearthstone player_head texture (custom fireplace skin via MineSkin)
data modify storage evercraft:housing temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MzAxMTIwNDE3MywKICAicHJvZmlsZUlkIiA6ICJhYjNkNTgwMjVkOWM0NTcyODNkNTFlYTcwYTY4N2U1NiIsCiAgInByb2ZpbGVOYW1lIiA6ICJsdWN5X2ludGhlc2t5XyIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS8xOGZhOTk2ODU5MzM4NTExNmNmM2E0NWM2MDQ3OTY3NDU2YjcyYzgxNTA2OGE0ODA1ZGE5ZjE0MTcxZTcwZTlmIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="

# Bootstrap tick schedule (2s self-schedule)
schedule function evercraft:housing/tick 2s replace
