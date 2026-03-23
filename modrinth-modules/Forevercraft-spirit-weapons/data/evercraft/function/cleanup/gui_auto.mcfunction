# Auto GUI Cleanup — 60-second sweep
# Kills orphaned GUI entities around players NOT actively in any menu

# Re-schedule
schedule function evercraft:cleanup/gui_auto 60s replace

# Skip if no players online
execute unless entity @a run return 0

# For each player not in any menu — TX table lock removed (memory system preserves state)
execute as @a[tag=!Adv.InMenu,tag=!companion.inmenuv2,tag=!TX.InMenu,tag=!LB.InMenu,tag=!CF.InMenu,tag=!RF.InMenu,tag=!HS.InMenu,tag=!CK.InMenu,tag=!TT.InMenu,tag=!DG.InMenu,tag=!IC.InMenu,tag=!BM.InMenu,tag=!WW.InMenu,tag=!ec.guild_in_menu] at @s run function evercraft:cleanup/gui_auto_player
