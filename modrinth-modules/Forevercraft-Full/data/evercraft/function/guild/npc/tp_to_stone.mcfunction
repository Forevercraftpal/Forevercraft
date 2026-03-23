# Guild NPC — Teleport newly recruited NPC to guildstone position
# Macro: $(gs_x), $(gs_y), $(gs_z) = guildstone position

$tp @e[type=minecraft:villager,tag=GuildNPC.new,limit=1] $(gs_x) $(gs_y) $(gs_z)
