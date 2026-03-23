# Guild Diplomacy — Player not in enemy zone (wrong dimension)
# Disable PvP if currently enabled
execute as @p if entity @s[tag=ec.gd_pvp] run function evercraft:guild/diplomacy/event/pvp/disable
