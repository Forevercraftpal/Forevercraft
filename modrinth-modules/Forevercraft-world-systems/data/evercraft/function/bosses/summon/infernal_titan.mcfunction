# World Boss — Summon The Infernal Titan (#7)
# Called as the summoner player, at the summoner's position

function evercraft:bosses/summon/scale
scoreboard players set #wb_boss_id ec.var 7

execute anchored eyes positioned ^ ^ ^5 run summon piglin_brute ~ ~ ~ {Tags:["wb.boss","wb.infernal_titan"],equipment:{mainhand:{id:"minecraft:golden_axe"}},IsImmuneToZombification:1b}

# Compute final HP: 450 × hp_scale / 100
scoreboard players set #wb_temp ec.var 450
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

data modify storage evercraft:bosses temp set value {boss_name:"The Infernal Titan",boss_color:"red",base_armor:12,base_speed:0.15d,base_damage:2.5d,boss_scale:1.8d,bar_color:"red"}
execute as @e[type=piglin_brute,tag=wb.boss,limit=1] at @s run function evercraft:bosses/summon/setup_boss with storage evercraft:bosses temp

# Apply HP via base set (total HP — no base subtraction needed)
execute store result storage evercraft:bosses temp.hp_mod int 1 run scoreboard players get #wb_hp_max ec.var
execute as @e[type=piglin_brute,tag=wb.boss,limit=1] run function evercraft:bosses/summon/apply_hp with storage evercraft:bosses temp

scoreboard players operation #wb_temp ec.var = #wb_dmg_scale ec.var
scoreboard players remove #wb_temp ec.var 100
execute if score #wb_temp ec.var matches 1.. store result storage evercraft:bosses temp.dmg_pct double 0.01 run scoreboard players get #wb_temp ec.var
execute if score #wb_temp ec.var matches 1.. as @e[type=piglin_brute,tag=wb.boss,limit=1] run function evercraft:bosses/summon/apply_dmg with storage evercraft:bosses temp

execute store result bossbar evercraft:world_boss max run scoreboard players get #wb_hp_max ec.var
execute store result bossbar evercraft:world_boss value run scoreboard players get #wb_hp_max ec.var
bossbar set evercraft:world_boss visible true
bossbar set evercraft:world_boss players @a[distance=..100]

# Phase 1 minions: 4 blazes
execute at @e[type=piglin_brute,tag=wb.boss,limit=1] run summon blaze ~3 ~ ~3 {Tags:["wb.minion"],PersistenceRequired:1b}
execute at @e[type=piglin_brute,tag=wb.boss,limit=1] run summon blaze ~-3 ~ ~3 {Tags:["wb.minion"],PersistenceRequired:1b}
execute at @e[type=piglin_brute,tag=wb.boss,limit=1] run summon blaze ~3 ~ ~-3 {Tags:["wb.minion"],PersistenceRequired:1b}
execute at @e[type=piglin_brute,tag=wb.boss,limit=1] run summon blaze ~-3 ~ ~-3 {Tags:["wb.minion"],PersistenceRequired:1b}
