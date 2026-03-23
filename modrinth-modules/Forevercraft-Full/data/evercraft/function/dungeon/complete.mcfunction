# Dungeon Instance System — Complete!
# All 5 waves cleared. Celebrate and reward!

# Floor 10 completion → check raid entry instead of normal completion
execute if score #dg_floor ec.var matches 10 run function evercraft:raids/check_entry
execute if score #dg_floor ec.var matches 10 run return 0

# Victory title
title @a[tag=dg.player] times 10 60 20
title @a[tag=dg.player] title {text:"DUNGEON CLEARED!",color:"gold",bold:true}
title @a[tag=dg.player] subtitle {text:"Victory is yours!",color:"yellow"}

# Chat announcement
tellraw @a [{text:"[Dungeon] ",color:"dark_purple"},{selector:"@a[tag=dg.player]"},{text:" has conquered the Dungeon Challenge!",color:"gold",bold:true}]

# Victory sounds
execute as @a[tag=dg.player] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
execute as @a[tag=dg.player] at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1
execute as @a[tag=dg.player] at @s run playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 1 1

# Victory particles at center
execute at @e[type=marker,tag=dg.center,limit=1] run particle minecraft:firework ~ ~2 ~ 3 2 3 0.1 200 force
execute at @e[type=marker,tag=dg.center,limit=1] run particle minecraft:totem_of_undying ~ ~2 ~ 2 2 2 0.5 150 force
execute at @e[type=marker,tag=dg.center,limit=1] run particle minecraft:happy_villager ~ ~1 ~ 3 1 3 0.1 50 force

# Set lockout: known structures use 7-day scoreboard, unknown uses 2-week position markers
execute unless score #dg_struct_id ec.var matches 20 run function evercraft:dungeon/lockout/set
execute if score #dg_struct_id ec.var matches 20 as @a[tag=dg.player] at @e[type=marker,tag=dg.center,limit=1] run function evercraft:dungeon/unknown/set_lockout

# Leaderboard: compute completion time and check personal best
execute as @a[tag=dg.player] run function evercraft:dungeon/leaderboard/check_time

# Announce affix clear if active
execute if score #dg_afx_count ec.var matches 1 run tellraw @a[tag=dg.player] [{text:"[Dungeon] ",color:"dark_purple"},{text:"Dungeon cleared with ",color:"gold"},{text:"1 affix",color:"yellow"},{text:"! Loot multiplier: ",color:"gold"},{text:"1.25x",color:"gold",bold:true}]
execute if score #dg_afx_count ec.var matches 2 run tellraw @a[tag=dg.player] [{text:"[Dungeon] ",color:"dark_purple"},{text:"Dungeon cleared with ",color:"gold"},{text:"2 affixes",color:"yellow"},{text:"! Loot multiplier: ",color:"gold"},{text:"1.5x",color:"gold",bold:true}]
execute if score #dg_afx_count ec.var matches 3 run tellraw @a[tag=dg.player] [{text:"[Dungeon] ",color:"dark_purple"},{text:"Dungeon cleared with ",color:"gold"},{text:"3 affixes",color:"yellow"},{text:"! Loot multiplier: ",color:"gold"},{text:"2.0x",color:"gold",bold:true}]

# === PERSONAL MILESTONE TRACKING ===
execute as @a[tag=dg.player] run scoreboard players add @s ach.dungeons_done 1

# === SPIRIT PROGRESSION TRACKING ===
execute as @a[tag=dg.player,tag=ec.sp_active] run scoreboard players add @s ec.sp_dungeon_runs 1
execute as @a[tag=dg.player,tag=ec.sp_active] run scoreboard players add @s ec.sp_total_floors 1
execute as @a[tag=dg.player,tag=ec.sp_active] run scoreboard players operation @s ec.sp_floor_max > #dg_floor ec.var

# Class Affinity XP — dungeon complete
scoreboard players set #delta ec.temp 60000
execute as @a[tag=dg.player] run function evercraft:affinity/grant_current

# Grant reward based on Dream Rate
function evercraft:dungeon/reward

# === SPIRIT RAID UNLOCK CHECK ===
# Check if players have unlocked Spirit Raids (or unlock on first clear)
# If prompt is shown, hold cleanup — tick_active polls the response
execute as @a[tag=dg.player] run function evercraft:spirit_raid/unlock_check
execute if entity @a[tag=sr.prompted] run return 0

# Cleanup (only runs if no Spirit Raid prompt is active)
function evercraft:dungeon/cleanup
