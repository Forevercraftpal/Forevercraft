# World Boss — Summon The Verdant Warden (#2)
# Called as the summoner player, at the summoner's position

function evercraft:bosses/summon/scale
scoreboard players set #wb_boss_id ec.var 2

# Summon vindicator 5 blocks ahead
execute anchored eyes positioned ^ ^ ^5 run summon vindicator ~ ~ ~ {Tags:["wb.boss","wb.verdant_warden"],equipment:{mainhand:{id:"minecraft:iron_axe"}}}

# Compute final HP: 280 × hp_scale / 100
scoreboard players set #wb_temp ec.var 280
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

# Setup boss
data modify storage evercraft:bosses temp set value {boss_name:"The Verdant Warden",boss_color:"dark_green",base_armor:8,base_speed:0.2d,base_damage:1.5d,boss_scale:1.4d,bar_color:"green"}
execute as @e[type=vindicator,tag=wb.boss,limit=1] at @s run function evercraft:bosses/summon/setup_boss with storage evercraft:bosses temp

# Apply HP via base set (total HP)
execute store result storage evercraft:bosses temp.hp_mod int 1 run scoreboard players get #wb_hp_max ec.var
execute as @e[type=vindicator,tag=wb.boss,limit=1] run function evercraft:bosses/summon/apply_hp with storage evercraft:bosses temp

# Apply damage scaling
scoreboard players operation #wb_temp ec.var = #wb_dmg_scale ec.var
scoreboard players remove #wb_temp ec.var 100
execute if score #wb_temp ec.var matches 1.. store result storage evercraft:bosses temp.dmg_pct double 0.01 run scoreboard players get #wb_temp ec.var
execute if score #wb_temp ec.var matches 1.. as @e[type=vindicator,tag=wb.boss,limit=1] run function evercraft:bosses/summon/apply_dmg with storage evercraft:bosses temp

# Bossbar
execute store result bossbar evercraft:world_boss max run scoreboard players get #wb_hp_max ec.var
execute store result bossbar evercraft:world_boss value run scoreboard players get #wb_hp_max ec.var
bossbar set evercraft:world_boss visible true
bossbar set evercraft:world_boss players @a[distance=..100]

# Phase 1 minions: 4 spiders
execute at @e[type=vindicator,tag=wb.boss,limit=1] run summon spider ~2 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}
execute at @e[type=vindicator,tag=wb.boss,limit=1] run summon spider ~-2 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}
execute at @e[type=vindicator,tag=wb.boss,limit=1] run summon spider ~ ~ ~2 {Tags:["wb.minion"],PersistenceRequired:1b}
execute at @e[type=vindicator,tag=wb.boss,limit=1] run summon spider ~ ~ ~-2 {Tags:["wb.minion"],PersistenceRequired:1b}
