# World Boss — Summon The Hollow King (#1)
# Called as the summoner player, at the summoner's position

# Calculate scaling (sets #wb_hp_scale, #wb_dmg_scale)
function evercraft:bosses/summon/scale

# Set boss ID early so cleanup fallback can distribute rewards if kill advancement fails
scoreboard players set #wb_boss_id ec.var 1

# Summon the base mob 5 blocks ahead
execute anchored eyes positioned ^ ^ ^5 run summon wither_skeleton ~ ~ ~ {Tags:["wb.boss","wb.hollow_king"],equipment:{mainhand:{id:"minecraft:netherite_sword"}}}

# Compute final HP: 300 × hp_scale / 100
scoreboard players set #wb_temp ec.var 300
scoreboard players operation #wb_temp ec.var *= #wb_hp_scale ec.var
scoreboard players operation #wb_temp ec.var /= #100 adv.temp
scoreboard players operation #wb_hp_max ec.var = #wb_temp ec.var

# Phase thresholds: P2 at 75%, P3 at 50%, P4 at 25%, Rage at 10%
scoreboard players operation #wb_p2_threshold ec.var = #wb_hp_max ec.var
scoreboard players set #wb_temp ec.var 75
scoreboard players operation #wb_p2_threshold ec.var *= #wb_temp ec.var
scoreboard players operation #wb_p2_threshold ec.var /= #100 adv.temp

scoreboard players operation #wb_p3_threshold ec.var = #wb_hp_max ec.var
scoreboard players set #wb_temp ec.var 50
scoreboard players operation #wb_p3_threshold ec.var *= #wb_temp ec.var
scoreboard players operation #wb_p3_threshold ec.var /= #100 adv.temp

scoreboard players operation #wb_p4_threshold ec.var = #wb_hp_max ec.var
scoreboard players set #wb_temp ec.var 25
scoreboard players operation #wb_p4_threshold ec.var *= #wb_temp ec.var
scoreboard players operation #wb_p4_threshold ec.var /= #100 adv.temp

scoreboard players operation #wb_rage_threshold ec.var = #wb_hp_max ec.var
scoreboard players set #wb_temp ec.var 10
scoreboard players operation #wb_rage_threshold ec.var *= #wb_temp ec.var
scoreboard players operation #wb_rage_threshold ec.var /= #100 adv.temp

# Prepare storage params for setup_boss macro
data modify storage evercraft:bosses temp set value {boss_name:"The Hollow King",boss_color:"gray",base_armor:10,base_speed:0.3d,base_damage:2.0d,boss_scale:1.5d,bar_color:"purple"}

# Apply setup (attributes, name, bossbar, VFX)
execute as @e[type=wither_skeleton,tag=wb.boss,limit=1] at @s run function evercraft:bosses/summon/setup_boss with storage evercraft:bosses temp

# Apply HP via base set (total HP)
execute store result storage evercraft:bosses temp.hp_mod int 1 run scoreboard players get #wb_hp_max ec.var
execute as @e[type=wither_skeleton,tag=wb.boss,limit=1] run function evercraft:bosses/summon/apply_hp with storage evercraft:bosses temp

# Apply DR/moon damage scaling as additional modifier
scoreboard players operation #wb_temp ec.var = #wb_dmg_scale ec.var
scoreboard players remove #wb_temp ec.var 100
execute if score #wb_temp ec.var matches 1.. store result storage evercraft:bosses temp.dmg_pct double 0.01 run scoreboard players get #wb_temp ec.var
execute if score #wb_temp ec.var matches 1.. as @e[type=wither_skeleton,tag=wb.boss,limit=1] run function evercraft:bosses/summon/apply_dmg with storage evercraft:bosses temp

# Set bossbar HP values
execute store result bossbar evercraft:world_boss max run scoreboard players get #wb_hp_max ec.var
execute store result bossbar evercraft:world_boss value run scoreboard players get #wb_hp_max ec.var
bossbar set evercraft:world_boss visible true
bossbar set evercraft:world_boss players @a[distance=..100]

# Spawn Phase 1 minions: 4 zombies
execute at @e[type=wither_skeleton,tag=wb.boss,limit=1] run summon zombie ~2 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:iron_sword"},head:{id:"minecraft:iron_helmet"}}}
execute at @e[type=wither_skeleton,tag=wb.boss,limit=1] run summon zombie ~-2 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:iron_sword"},head:{id:"minecraft:iron_helmet"}}}
execute at @e[type=wither_skeleton,tag=wb.boss,limit=1] run summon zombie ~ ~ ~2 {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:iron_sword"},head:{id:"minecraft:iron_helmet"}}}
execute at @e[type=wither_skeleton,tag=wb.boss,limit=1] run summon zombie ~ ~ ~-2 {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:iron_sword"},head:{id:"minecraft:iron_helmet"}}}
