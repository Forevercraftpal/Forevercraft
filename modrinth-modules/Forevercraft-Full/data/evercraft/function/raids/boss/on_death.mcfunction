# Spirit Raids — Boss Death (boss entity no longer exists)
# Route to boss-specific death handler for loot and cleanup

# Guard: only fire once (prevents double-victory if entity check triggers twice)
execute unless score #rd_boss_alive ec.var matches 1 run return 0
scoreboard players set #rd_boss_alive ec.var 0

# Announce victory
tellraw @a[tag=ec.rd_participant] [{text:""},{"text":"══════════════════════════════","color":"gold"}]
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"RAID BOSS DEFEATED!","color":"gold","bold":true}]
tellraw @a[tag=ec.rd_participant] [{text:"══════════════════════════════","color":"gold"}]

# Victory sound
playsound minecraft:ui.toast.challenge_complete master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.0
playsound minecraft:entity.player.levelup master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8

# Title display
title @a[tag=ec.rd_participant] times 10 60 20
title @a[tag=ec.rd_participant] title {"text":"VICTORY","color":"gold","bold":true}
title @a[tag=ec.rd_participant] subtitle {"text":"The raid boss has been vanquished!","color":"yellow"}

# === SPIRIT PROGRESSION TRACKING ===
scoreboard players add @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_bosses_killed 1
# Solo boss check: if only 1 participant, flag it
execute store result score #sp_temp ec.var if entity @a[tag=ec.rd_participant]
execute if score #sp_temp ec.var matches 1 run scoreboard players set @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_solo_boss 1
# Solo Hollow Sovereign (boss_id 1) check
execute if score #rd_boss_id ec.var matches 1 if score #sp_temp ec.var matches 1 run scoreboard players set @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_solo_hollow 1
# Per-boss unique kill flags (for ec.sp_all_bosses tracking)
execute if score #rd_boss_id ec.var matches 1 run scoreboard players set @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_bk1 1
execute if score #rd_boss_id ec.var matches 2 run scoreboard players set @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_bk2 1
execute if score #rd_boss_id ec.var matches 3 run scoreboard players set @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_bk3 1
execute if score #rd_boss_id ec.var matches 4 run scoreboard players set @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_bk4 1
execute if score #rd_boss_id ec.var matches 5 run scoreboard players set @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_bk5 1
execute if score #rd_boss_id ec.var matches 6 run scoreboard players set @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_bk6 1
execute if score #rd_boss_id ec.var matches 7 run scoreboard players set @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_bk7 1
execute if score #rd_boss_id ec.var matches 8 run scoreboard players set @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_bk8 1
execute if score #rd_boss_id ec.var matches 9 run scoreboard players set @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_bk9 1
execute if score #rd_boss_id ec.var matches 10 run scoreboard players set @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_bk10 1
execute if score #rd_boss_id ec.var matches 11 run scoreboard players set @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_bk11 1
execute if score #rd_boss_id ec.var matches 12 run scoreboard players set @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_bk12 1
execute if score #rd_boss_id ec.var matches 13 run scoreboard players set @a[tag=ec.rd_participant,tag=ec.sp_active] ec.sp_bk13 1
# Snipe boss: if Voidpiercer user had snipe_flag set from on_hit (50+ block hit on boss), commit it
execute as @a[tag=ec.rd_participant,tag=ec.sp_active,scores={ec.sp_snipe_flag=1..}] run scoreboard players set @s ec.sp_snipe_boss 1
scoreboard players set @a[tag=ec.rd_participant] ec.sp_snipe_flag 0
# Ranged-only boss kill: Voidpiercer (weapon 2) is inherently ranged — all boss kills count
execute as @a[tag=ec.rd_participant,tag=ec.sp_active,scores={ec.sp_weapon=2}] run scoreboard players add @s ec.sp_ranged_boss 1
# Check if all 13 unique bosses killed → set all_bosses flag
execute as @a[tag=ec.rd_participant,tag=ec.sp_active,scores={ec.sp_bk1=1..,ec.sp_bk2=1..,ec.sp_bk3=1..,ec.sp_bk4=1..,ec.sp_bk5=1..,ec.sp_bk6=1..,ec.sp_bk7=1..}] if score @s ec.sp_bk8 matches 1.. if score @s ec.sp_bk9 matches 1.. if score @s ec.sp_bk10 matches 1.. if score @s ec.sp_bk11 matches 1.. if score @s ec.sp_bk12 matches 1.. if score @s ec.sp_bk13 matches 1.. run scoreboard players set @s ec.sp_all_bosses 1

# Class Affinity XP — spirit raid boss
scoreboard players set #delta ec.temp 120000
execute as @a[tag=ec.rd_participant] run function evercraft:affinity/grant_current

# Route to boss-specific death for loot drops
execute if score #rd_boss_id ec.var matches 1 run function evercraft:raids/boss/hollow_sovereign/death
execute if score #rd_boss_id ec.var matches 2 run function evercraft:raids/boss/void_architect/death
execute if score #rd_boss_id ec.var matches 3 run function evercraft:raids/boss/gilded_tyrant/death
execute if score #rd_boss_id ec.var matches 4 run function evercraft:raids/boss/arbiter/death
execute if score #rd_boss_id ec.var matches 5 run function evercraft:raids/boss/gatekeeper/death
execute if score #rd_boss_id ec.var matches 6 run function evercraft:raids/boss/grand_illusionist/death
execute if score #rd_boss_id ec.var matches 7 run function evercraft:raids/boss/ashen_lord/death
execute if score #rd_boss_id ec.var matches 8 run function evercraft:raids/boss/leviathan/death
execute if score #rd_boss_id ec.var matches 9 run function evercraft:raids/boss/eternal_pharaoh/death
execute if score #rd_boss_id ec.var matches 10 run function evercraft:raids/boss/venomweaver/death
execute if score #rd_boss_id ec.var matches 11 run function evercraft:raids/boss/deepcrawler/death
execute if score #rd_boss_id ec.var matches 12 run function evercraft:raids/boss/mossheart_warden/death
execute if score #rd_boss_id ec.var matches 13 run function evercraft:raids/boss/crimson_bulwark/death

# Global cleanup
function evercraft:raids/boss/cleanup

# Teleport players back and clean up raid room
function evercraft:raids/exit_win
