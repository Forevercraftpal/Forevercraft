# Guild GUI — Trigger handler for menu actions
# @s = player with ec.guild_menu >= 1
# Values: 2=members, 4=manage, 5=invite mode, 6=kick vote, 7=leave, 8=disband, 9=teleport, 10=expedition, 11=dismiss NPC

# Must be in a guild for all actions
execute unless score @s ec.guild_id matches 1.. run return 0

# 2: Members page
tag @s add ec.guild_viewer
execute if score @s ec.guild_menu matches 2 run function evercraft:guild/gui/page_members
tag @s remove ec.guild_viewer

# 4: Management page
execute if score @s ec.guild_menu matches 4 run function evercraft:guild/gui/page_manage

# 5: Invite mode — start raycast
execute if score @s ec.guild_menu matches 5 at @s run function evercraft:guild/invite/sneak_send

# 6: Kick vote — start raycast to select target
execute if score @s ec.guild_menu matches 6 at @s run function evercraft:guild/kick/start

# 7: Leave guild
execute if score @s ec.guild_menu matches 7 run function evercraft:guild/leave

# 8: Disband guild
execute if score @s ec.guild_menu matches 8 run function evercraft:guild/disband

# 9: Teleport — open guidestone menu from nearest guild stone
execute if score @s ec.guild_menu matches 9 at @s run function evercraft:guild/gui/open_teleport

# 10: Start expedition vote (rank 4+)
execute if score @s ec.guild_menu matches 10 run function evercraft:guild/expedition/start

# 11: Dismiss NPC
execute if score @s ec.guild_menu matches 11 at @s run function evercraft:guild/npc/dismiss_start
