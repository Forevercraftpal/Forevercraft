# The Venomweaver (#10) — Spawn
# Jungle Pyramid raid boss — Healer class artifact (Lifewoven Branch)

scoreboard players set #rd_boss_id ec.var 10

# Summon cave spider (supersized)
execute anchored eyes positioned ^ ^ ^5 run summon cave_spider ~ ~ ~ {Tags:["ec.rd_boss","ec.rd_vw"],Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b}

# HP: 1300 (650 hearts)
scoreboard players set #rd_boss_hp_max ec.var 1300
scoreboard players set #rd_p2_threshold ec.var 858
scoreboard players set #rd_p3_threshold ec.var 429

# Attributes
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run attribute @s max_health base set 1300
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run tag @s add ec.rd_initializing
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run attribute @s scale base set 4.0
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run attribute @s armor modifier add evercraft:rd_boss/base 8 add_value
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/base 0.4 add_multiplied_base
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/base 2.0 add_multiplied_base
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run attribute @s knockback_resistance modifier add evercraft:rd_boss/base 0.5 add_value

# Custom name
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run data modify entity @s CustomName set value [{text:"☠ ",color:"dark_red"},{text:"The Venomweaver",color:"dark_green",bold:true},{text:" ☠",color:"dark_red"}]
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] run data modify entity @s CustomNameVisible set value 1b

# Bossbar
bossbar remove evercraft:raid_boss
bossbar add evercraft:raid_boss [{text:"☠ ",color:"dark_red"},{text:"The Venomweaver",color:"dark_green",bold:true},{text:" ☠",color:"dark_red"}]
bossbar set evercraft:raid_boss color green
bossbar set evercraft:raid_boss max 1300
bossbar set evercraft:raid_boss value 1300
bossbar set evercraft:raid_boss visible true
bossbar set evercraft:raid_boss players @a[distance=..100]

# State
scoreboard players set #rd_active ec.var 1
scoreboard players set #rd_boss_phase ec.var 1
scoreboard players set #rd_timer ec.var 0
scoreboard players set #rd_phase_lock ec.var 0
scoreboard players set #rd_ability_cd ec.var 0
scoreboard players set #rd_vw_perch_cd ec.var 100
scoreboard players set #rd_vw_spit_cd ec.var 0
scoreboard players set #rd_vw_web_cd ec.var 0
scoreboard players set #rd_vw_rage ec.var 0
scoreboard players set #rd_vw_cloud_cd ec.var 0
scoreboard players set #rd_vw_color_cd ec.var 200
scoreboard players set #rd_vw_glow_color ec.var 0

# Spawn 3 vine perch positions (interaction entities — clickable for puzzle)
execute at @e[type=cave_spider,tag=ec.rd_boss,limit=1] run summon interaction ~10 ~5 ~10 {Tags:["ec.rd_mechanic","ec.rd_vw_perch","ec.rd_vw_perch1"],width:2.5f,height:3.0f,response:1b}
execute at @e[type=cave_spider,tag=ec.rd_boss,limit=1] run summon interaction ~-10 ~5 ~-10 {Tags:["ec.rd_mechanic","ec.rd_vw_perch","ec.rd_vw_perch2"],width:2.5f,height:3.0f,response:1b}
execute at @e[type=cave_spider,tag=ec.rd_boss,limit=1] run summon interaction ~ ~5 ~12 {Tags:["ec.rd_mechanic","ec.rd_vw_perch","ec.rd_vw_perch3"],width:2.5f,height:3.0f,response:1b}

# Heal
schedule function evercraft:raids/boss/sync_hp 2t

tag @s add ec.rd_participant
data modify storage evercraft:raids active set value {boss_name:"The Venomweaver",boss_color:"dark_green"}

# VFX
execute at @e[type=cave_spider,tag=ec.rd_boss,limit=1] run particle minecraft:item_slime ~ ~1 ~ 2 1 2 0.1 30
execute at @e[type=cave_spider,tag=ec.rd_boss,limit=1] run playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 1.5 0.4
execute at @e[type=cave_spider,tag=ec.rd_boss,limit=1] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.8 0.8

tellraw @a [{text:"═══════════════════════════════",color:"dark_green"}]
tellraw @a [{text:"  ☠ ",color:"dark_red"},{text:"The Venomweaver",color:"dark_green",bold:true},{text:" descends from the canopy!",color:"green"}]
tellraw @a [{text:"  ",color:"dark_gray"},{text:"The vines tighten...",color:"gray",italic:true}]
tellraw @a [{text:"═══════════════════════════════",color:"dark_green"}]
