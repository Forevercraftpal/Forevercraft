# === SPIRIT TOOLS — PROTECTED ZONE CHECK ===
# FIX #8: Prevent mastery abilities from destroying protected structures
# Run as/at player. Returns fail (via tag) if in protected zone.
# Checks for: Guidestones, Housing, Guild Stones, Dungeon, Trial Anvils

tag @s remove ec.st_zone_safe
tag @s add ec.st_zone_safe

# Housing plots (HS.Marker = hearthstone center)
execute if entity @e[type=marker,tag=HS.Marker,distance=..20] run tag @s remove ec.st_zone_safe
execute if entity @e[type=marker,tag=HS.Marker,distance=..20] run tellraw @s [{"text":"  "},{"text":"⚠","color":"red"},{"text":" Cannot use mastery near a ","color":"gray"},{"text":"Hearthstone","color":"gold"},{"text":"!","color":"gray"}]

# Guild Stones (GLD.Stone)
execute if entity @e[type=marker,tag=GLD.Stone,distance=..20] run tag @s remove ec.st_zone_safe
execute if entity @e[type=marker,tag=GLD.Stone,distance=..20] run tellraw @s [{"text":"  "},{"text":"⚠","color":"red"},{"text":" Cannot use mastery near a ","color":"gray"},{"text":"Guild Stone","color":"aqua"},{"text":"!","color":"gray"}]

# Dungeon (dg.player = in dungeon instance)
execute if entity @s[tag=dg.player] run tag @s remove ec.st_zone_safe
execute if entity @s[tag=dg.player] run tellraw @s [{"text":"  "},{"text":"⚠","color":"red"},{"text":" Cannot use mastery in a ","color":"gray"},{"text":"Dungeon","color":"red"},{"text":"!","color":"gray"}]

# Trial Anvils (TT.Marker)
execute if entity @e[type=marker,tag=TT.Marker,distance=..15] run tag @s remove ec.st_zone_safe
execute if entity @e[type=marker,tag=TT.Marker,distance=..15] run tellraw @s [{"text":"  "},{"text":"⚠","color":"red"},{"text":" Cannot use mastery near a ","color":"gray"},{"text":"Trial Anvil","color":"yellow"},{"text":"!","color":"gray"}]

# Guidestones (gs.marker)
execute if entity @e[type=marker,tag=gs.marker,distance=..10] run tag @s remove ec.st_zone_safe
execute if entity @e[type=marker,tag=gs.marker,distance=..10] run tellraw @s [{"text":"  "},{"text":"⚠","color":"red"},{"text":" Cannot use mastery near a ","color":"gray"},{"text":"Guidestone","color":"green"},{"text":"!","color":"gray"}]
