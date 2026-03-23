# World Boss — Summon The Earthshaker (#5)
# Called as the summoner player, at the summoner's position

function evercraft:bosses/summon/scale
scoreboard players set #wb_boss_id ec.var 5

execute anchored eyes positioned ^ ^ ^5 run summon iron_golem ~ ~ ~ {Tags:["wb.boss","wb.earthshaker"]}

# Compute final HP: 400 × hp_scale / 100
scoreboard players set #wb_temp ec.var 400
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

data modify storage evercraft:bosses temp set value {boss_name:"The Earthshaker",boss_color:"gold",base_armor:15,base_speed:0.1d,base_damage:2.5d,boss_scale:1.8d,bar_color:"yellow"}
execute as @e[type=iron_golem,tag=wb.boss,limit=1] at @s run function evercraft:bosses/summon/setup_boss with storage evercraft:bosses temp

# Apply HP via base set (total HP — no base subtraction needed)
execute store result storage evercraft:bosses temp.hp_mod int 1 run scoreboard players get #wb_hp_max ec.var
execute as @e[type=iron_golem,tag=wb.boss,limit=1] run function evercraft:bosses/summon/apply_hp with storage evercraft:bosses temp

scoreboard players operation #wb_temp ec.var = #wb_dmg_scale ec.var
scoreboard players remove #wb_temp ec.var 100
execute if score #wb_temp ec.var matches 1.. store result storage evercraft:bosses temp.dmg_pct double 0.01 run scoreboard players get #wb_temp ec.var
execute if score #wb_temp ec.var matches 1.. as @e[type=iron_golem,tag=wb.boss,limit=1] run function evercraft:bosses/summon/apply_dmg with storage evercraft:bosses temp

execute store result bossbar evercraft:world_boss max run scoreboard players get #wb_hp_max ec.var
execute store result bossbar evercraft:world_boss value run scoreboard players get #wb_hp_max ec.var
bossbar set evercraft:world_boss visible true
bossbar set evercraft:world_boss players @a[distance=..100]

# Phase 1 minions: 4 armored zombies
execute at @e[type=iron_golem,tag=wb.boss,limit=1] run summon zombie ~3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:stone_sword"},head:{id:"minecraft:iron_helmet"},chest:{id:"minecraft:iron_chestplate"}}}
execute at @e[type=iron_golem,tag=wb.boss,limit=1] run summon zombie ~-3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:stone_sword"},head:{id:"minecraft:iron_helmet"},chest:{id:"minecraft:iron_chestplate"}}}
execute at @e[type=iron_golem,tag=wb.boss,limit=1] run summon zombie ~ ~ ~3 {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:stone_sword"},head:{id:"minecraft:iron_helmet"},chest:{id:"minecraft:iron_chestplate"}}}
execute at @e[type=iron_golem,tag=wb.boss,limit=1] run summon zombie ~ ~ ~-3 {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:stone_sword"},head:{id:"minecraft:iron_helmet"},chest:{id:"minecraft:iron_chestplate"}}}
