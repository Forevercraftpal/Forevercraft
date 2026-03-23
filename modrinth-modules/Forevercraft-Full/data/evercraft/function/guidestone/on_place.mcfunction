# Guidestone — On Place
# Called by place_guidestone advancement when player places a guidestone (custom lodestone)
# The advancement uses match_tool to ensure only guidestones trigger this, not regular lodestones
# Run as: the player

# Revoke advancement immediately for re-detection
advancement revoke @s only evercraft:guidestone/place_guidestone

# Detect the color variant from remaining stack or offhand
# After placing, the item count decremented but custom_data is still readable
# We check mainhand first, then offhand, default to amethyst
# Store both color name and skin texture value for the item_display
data modify storage evercraft:guidestone temp_color set value "guidestone"
data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MzUzODc0MjM0NSwKICAicHJvZmlsZUlkIiA6ICIyNDY1ODI2NWVjMjg0NTY4YTg3MDJkOTVlYzdlYTc4MyIsCiAgInByb2ZpbGVOYW1lIiA6ICJBcmdvc1oxMiIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS83OThhNGExOWM1ZDRjNzJiYzI1MjFlYmI5NzQ2MzRkYWJhMWNlZTczNjZlYjk1NWRmMzYwZWY3YzY4MDNkOTNjIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="

execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"crimson"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_crimson"
execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"crimson"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MzUzODc1Njg1OSwKICAicHJvZmlsZUlkIiA6ICIyMWUzNjdkNzI1Y2Y0ZTNiYjI2OTJjNGEzMDBhNGRlYiIsCiAgInByb2ZpbGVOYW1lIiA6ICJHZXlzZXJNQyIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS82MGY0YWJiZDYwM2Q4MTU5ZDI1MjEzZTJkMzZlNGUwZDlhYjQzODIxNzdiNGEzZDlkYzc5Y2MzNGNjYmNhMjdlIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="
execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"verdant"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_verdant"
execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"verdant"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MzUzODc5OTQ2NCwKICAicHJvZmlsZUlkIiA6ICIwNDg0N2ZjNWM5YjY0NTQ1YjI1ZWJkYmJiNzdjNjg2NSIsCiAgInByb2ZpbGVOYW1lIiA6ICJOYXFsdWEiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWRjM2ViNDQ5OWVkYmU2OTg0MzE3OTBkOGVjOTQ0OGMxYWE5ZWNiYWM0ZjUzMWYxODg4ZTE1Mjk4NWZmOWUwYiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"
execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"azure"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_azure"
execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"azure"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MzUzODc3MDYzOSwKICAicHJvZmlsZUlkIiA6ICIzMjA3MWFlYjYzZjI0NmY0YTVlMGZhMWY3ODg3ZGRhNCIsCiAgInByb2ZpbGVOYW1lIiA6ICJNcl9HZW5lcyIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lYjUzY2ExZTM4ZTA2OWRmNGI0ZDEyZTJjYmJmM2Q5ZGI1NzFjOTEzNGYxNzQ1NzcyODU2N2Y1ZGIyOGExMjg1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="
execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"solar"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_solar"
execute if items entity @s weapon.mainhand lodestone[custom_data~{gs_color:"solar"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MzUzODc4NTkxNywKICAicHJvZmlsZUlkIiA6ICI2OTY0OGJkMDMwMDU0MDRlOTk4YTI5OTRhNGE4NmY1OSIsCiAgInByb2ZpbGVOYW1lIiA6ICJxdWFydHlxd2VydHkiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY4MzJlOTMyZjFhZjM4MTNkMTVkYjhlN2YxYjIzZTM3NmZjZjExMjc1NmVlYTk3NGQyNWFmOTlhOWYzZjYxZSIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"

execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"crimson"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_crimson"
execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"crimson"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MzUzODc1Njg1OSwKICAicHJvZmlsZUlkIiA6ICIyMWUzNjdkNzI1Y2Y0ZTNiYjI2OTJjNGEzMDBhNGRlYiIsCiAgInByb2ZpbGVOYW1lIiA6ICJHZXlzZXJNQyIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS82MGY0YWJiZDYwM2Q4MTU5ZDI1MjEzZTJkMzZlNGUwZDlhYjQzODIxNzdiNGEzZDlkYzc5Y2MzNGNjYmNhMjdlIiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="
execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"verdant"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_verdant"
execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"verdant"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MzUzODc5OTQ2NCwKICAicHJvZmlsZUlkIiA6ICIwNDg0N2ZjNWM5YjY0NTQ1YjI1ZWJkYmJiNzdjNjg2NSIsCiAgInByb2ZpbGVOYW1lIiA6ICJOYXFsdWEiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWRjM2ViNDQ5OWVkYmU2OTg0MzE3OTBkOGVjOTQ0OGMxYWE5ZWNiYWM0ZjUzMWYxODg4ZTE1Mjk4NWZmOWUwYiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"
execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"azure"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_azure"
execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"azure"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MzUzODc3MDYzOSwKICAicHJvZmlsZUlkIiA6ICIzMjA3MWFlYjYzZjI0NmY0YTVlMGZhMWY3ODg3ZGRhNCIsCiAgInByb2ZpbGVOYW1lIiA6ICJNcl9HZW5lcyIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lYjUzY2ExZTM4ZTA2OWRmNGI0ZDEyZTJjYmJmM2Q5ZGI1NzFjOTEzNGYxNzQ1NzcyODU2N2Y1ZGIyOGExMjg1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="
execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"solar"}] run data modify storage evercraft:guidestone temp_color set value "guidestone_solar"
execute if items entity @s weapon.offhand lodestone[custom_data~{gs_color:"solar"}] run data modify storage evercraft:guidestone temp_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3MzUzODc4NTkxNywKICAicHJvZmlsZUlkIiA6ICI2OTY0OGJkMDMwMDU0MDRlOTk4YTI5OTRhNGE4NmY1OSIsCiAgInByb2ZpbGVOYW1lIiA6ICJxdWFydHlxd2VydHkiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY4MzJlOTMyZjFhZjM4MTNkMTVkYjhlN2YxYjIzZTM3NmZjZjExMjc1NmVlYTk3NGQyNWFmOTlhOWYzZjYxZSIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"

# Extract custom name from the guidestone item for registration
# custom_name can be a plain string OR a compound with .text — try both approaches
# First try the full component (works if it's a plain string from anvil rename)
# Then try .text subfield (works if it's a compound from give command)
# Fails gracefully if last item was placed (item consumed, slot empty).
data modify storage evercraft:guidestone temp_custom_name_text set value ""
execute if items entity @s weapon.mainhand lodestone[custom_data~{guidestone:1b}] run data modify storage evercraft:guidestone temp_custom_name_text set from entity @s SelectedItem.components."minecraft:custom_name"
execute if items entity @s weapon.mainhand lodestone[custom_data~{guidestone:1b}] if data entity @s SelectedItem.components."minecraft:custom_name".text run data modify storage evercraft:guidestone temp_custom_name_text set from entity @s SelectedItem.components."minecraft:custom_name".text
execute if items entity @s weapon.offhand lodestone[custom_data~{guidestone:1b}] if data storage evercraft:guidestone {temp_custom_name_text:""} run data modify storage evercraft:guidestone temp_custom_name_text set from entity @s equipment.offhand.components."minecraft:custom_name"
execute if items entity @s weapon.offhand lodestone[custom_data~{guidestone:1b}] if data entity @s equipment.offhand.components."minecraft:custom_name".text run data modify storage evercraft:guidestone temp_custom_name_text set from entity @s equipment.offhand.components."minecraft:custom_name".text

# Store the placing player's name for the registry owner field and default naming
data modify storage evercraft:guidestone temp_player_name set value "Unknown"

# Find the placed block: try raycast first, then fallback grid scan
tag @s add ec.searching
scoreboard players set @s ec.gs_temp 0
execute at @s anchored eyes run function evercraft:guidestone/raycast_place

# Fallback: grid scan if raycast missed (oblique angles)
execute if entity @s[tag=ec.searching] at @s align xyz run function evercraft:util/scan_for_lodestone {setup_function:"evercraft:guidestone/setup_guidestone"}
