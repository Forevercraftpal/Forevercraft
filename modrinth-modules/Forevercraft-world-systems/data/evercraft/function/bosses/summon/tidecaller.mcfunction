# World Boss — Summon The Tidecaller (#4)
# Called as the summoner player, at the summoner's position

function evercraft:bosses/summon/scale
scoreboard players set #wb_boss_id ec.var 4

execute anchored eyes positioned ^ ^ ^5 run summon drowned ~ ~ ~ {Tags:["wb.boss","wb.tidecaller"],equipment:{mainhand:{id:"minecraft:trident"}}}

# Compute final HP: 350 × hp_scale / 100
scoreboard players set #wb_temp ec.var 350
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

data modify storage evercraft:bosses temp set value {boss_name:"The Tidecaller",boss_color:"dark_aqua",base_armor:10,base_speed:0.15d,base_damage:1.8d,boss_scale:1.6d,bar_color:"blue"}
execute as @e[type=drowned,tag=wb.boss,limit=1] at @s run function evercraft:bosses/summon/setup_boss with storage evercraft:bosses temp

execute store result storage evercraft:bosses temp.hp_mod int 1 run scoreboard players get #wb_hp_max ec.var
execute as @e[type=drowned,tag=wb.boss,limit=1] run function evercraft:bosses/summon/apply_hp with storage evercraft:bosses temp

scoreboard players operation #wb_temp ec.var = #wb_dmg_scale ec.var
scoreboard players remove #wb_temp ec.var 100
execute if score #wb_temp ec.var matches 1.. store result storage evercraft:bosses temp.dmg_pct double 0.01 run scoreboard players get #wb_temp ec.var
execute if score #wb_temp ec.var matches 1.. as @e[type=drowned,tag=wb.boss,limit=1] run function evercraft:bosses/summon/apply_dmg with storage evercraft:bosses temp

execute store result bossbar evercraft:world_boss max run scoreboard players get #wb_hp_max ec.var
execute store result bossbar evercraft:world_boss value run scoreboard players get #wb_hp_max ec.var
bossbar set evercraft:world_boss visible true
bossbar set evercraft:world_boss players @a[distance=..100]

# Phase 1 minions: 4 drowned
execute at @e[type=drowned,tag=wb.boss,limit=1] run summon drowned ~3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:trident"}}}
execute at @e[type=drowned,tag=wb.boss,limit=1] run summon drowned ~-3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:trident"}}}
execute at @e[type=drowned,tag=wb.boss,limit=1] run summon drowned ~ ~ ~3 {Tags:["wb.minion"],PersistenceRequired:1b}
execute at @e[type=drowned,tag=wb.boss,limit=1] run summon drowned ~ ~ ~-3 {Tags:["wb.minion"],PersistenceRequired:1b}
