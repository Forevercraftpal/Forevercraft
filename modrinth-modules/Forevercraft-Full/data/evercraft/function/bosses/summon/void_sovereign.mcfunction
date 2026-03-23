# World Boss — Summon The Void Sovereign (#10)
# Called as the summoner player, at the summoner's position

function evercraft:bosses/summon/scale
scoreboard players set #wb_boss_id ec.var 10

execute anchored eyes positioned ^ ^ ^5 run summon vindicator ~ ~ ~ {Tags:["wb.boss","wb.void_sovereign"],equipment:{mainhand:{id:"minecraft:netherite_sword"}}}

# Compute final HP: 500 × hp_scale / 100
scoreboard players set #wb_temp ec.var 500
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

data modify storage evercraft:bosses temp set value {boss_name:"The Void Sovereign",boss_color:"dark_purple",base_armor:10,base_speed:0.25d,base_damage:2.0d,boss_scale:1.5d,bar_color:"purple"}
execute as @e[type=vindicator,tag=wb.boss,limit=1] at @s run function evercraft:bosses/summon/setup_boss with storage evercraft:bosses temp

execute store result storage evercraft:bosses temp.hp_mod int 1 run scoreboard players get #wb_hp_max ec.var
execute as @e[type=vindicator,tag=wb.boss,limit=1] run function evercraft:bosses/summon/apply_hp with storage evercraft:bosses temp

scoreboard players operation #wb_temp ec.var = #wb_dmg_scale ec.var
scoreboard players remove #wb_temp ec.var 100
execute if score #wb_temp ec.var matches 1.. store result storage evercraft:bosses temp.dmg_pct double 0.01 run scoreboard players get #wb_temp ec.var
execute if score #wb_temp ec.var matches 1.. as @e[type=vindicator,tag=wb.boss,limit=1] run function evercraft:bosses/summon/apply_dmg with storage evercraft:bosses temp

execute store result bossbar evercraft:world_boss max run scoreboard players get #wb_hp_max ec.var
execute store result bossbar evercraft:world_boss value run scoreboard players get #wb_hp_max ec.var
bossbar set evercraft:world_boss visible true
bossbar set evercraft:world_boss players @a[distance=..100]

# Phase 1 minions: 4 endermites
execute at @e[type=vindicator,tag=wb.boss,limit=1] run summon endermite ~2 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,Lifetime:0}
execute at @e[type=vindicator,tag=wb.boss,limit=1] run summon endermite ~-2 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,Lifetime:0}
execute at @e[type=vindicator,tag=wb.boss,limit=1] run summon endermite ~ ~ ~2 {Tags:["wb.minion"],PersistenceRequired:1b,Lifetime:0}
execute at @e[type=vindicator,tag=wb.boss,limit=1] run summon endermite ~ ~ ~-2 {Tags:["wb.minion"],PersistenceRequired:1b,Lifetime:0}
