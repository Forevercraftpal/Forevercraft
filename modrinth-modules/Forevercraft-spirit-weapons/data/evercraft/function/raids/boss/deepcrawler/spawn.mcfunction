# The Deepcrawler (#11) — Spawn
# Mineshaft raid boss — Archer class artifact (Soulstring)

scoreboard players set #rd_boss_id ec.var 11

# Summon silverfish (massive)
execute anchored eyes positioned ^ ^ ^5 run summon silverfish ~ ~ ~ {Tags:["ec.rd_boss","ec.rd_dc"],Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b}

# HP: 1400 (700 hearts)
scoreboard players set #rd_boss_hp_max ec.var 1400
scoreboard players set #rd_p2_threshold ec.var 924
scoreboard players set #rd_p3_threshold ec.var 462

# Attributes
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run attribute @s max_health base set 1400
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run tag @s add ec.rd_initializing
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run attribute @s scale base set 5.0
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run attribute @s armor modifier add evercraft:rd_boss/base 10 add_value
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/base 0.6 add_multiplied_base
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/base 3.0 add_multiplied_base
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run attribute @s knockback_resistance modifier add evercraft:rd_boss/base 0.8 add_value

# Custom name
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run data modify entity @s CustomName set value [{text:"\u2620 ",color:"dark_gray"},{text:"The Deepcrawler",color:"gray",bold:true},{text:" \u2620",color:"dark_gray"}]
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] run data modify entity @s CustomNameVisible set value 1b

# Bossbar
bossbar remove evercraft:raid_boss
bossbar add evercraft:raid_boss [{text:"\u2620 ",color:"dark_gray"},{text:"The Deepcrawler",color:"gray",bold:true},{text:" \u2620",color:"dark_gray"}]
bossbar set evercraft:raid_boss color white
bossbar set evercraft:raid_boss max 1400
bossbar set evercraft:raid_boss value 1400
bossbar set evercraft:raid_boss visible true
bossbar set evercraft:raid_boss players @a[distance=..100]

# State
scoreboard players set #rd_active ec.var 1
scoreboard players set #rd_boss_phase ec.var 1
scoreboard players set #rd_timer ec.var 0
scoreboard players set #rd_phase_lock ec.var 0
scoreboard players set #rd_ability_cd ec.var 0
scoreboard players set #rd_dc_burrow_cd ec.var 60
scoreboard players set #rd_dc_stala_cd ec.var 0
scoreboard players set #rd_dc_above ec.var 1
scoreboard players set #rd_dc_cart_cd ec.var 0
scoreboard players set #rd_dc_dark_timer ec.var 0
scoreboard players set #rd_dc_lever_seq ec.var 0

# Spawn 8 wall emergence positions (markers around arena perimeter)
execute at @e[type=silverfish,tag=ec.rd_boss,limit=1] run summon marker ~15 ~1 ~0 {Tags:["ec.rd_mechanic","ec.rd_dc_wall_pos"]}
execute at @e[type=silverfish,tag=ec.rd_boss,limit=1] run summon marker ~-15 ~1 ~0 {Tags:["ec.rd_mechanic","ec.rd_dc_wall_pos"]}
execute at @e[type=silverfish,tag=ec.rd_boss,limit=1] run summon marker ~0 ~1 ~15 {Tags:["ec.rd_mechanic","ec.rd_dc_wall_pos"]}
execute at @e[type=silverfish,tag=ec.rd_boss,limit=1] run summon marker ~0 ~1 ~-15 {Tags:["ec.rd_mechanic","ec.rd_dc_wall_pos"]}
execute at @e[type=silverfish,tag=ec.rd_boss,limit=1] run summon marker ~10 ~1 ~10 {Tags:["ec.rd_mechanic","ec.rd_dc_wall_pos"]}
execute at @e[type=silverfish,tag=ec.rd_boss,limit=1] run summon marker ~-10 ~1 ~10 {Tags:["ec.rd_mechanic","ec.rd_dc_wall_pos"]}
execute at @e[type=silverfish,tag=ec.rd_boss,limit=1] run summon marker ~10 ~1 ~-10 {Tags:["ec.rd_mechanic","ec.rd_dc_wall_pos"]}
execute at @e[type=silverfish,tag=ec.rd_boss,limit=1] run summon marker ~-10 ~1 ~-10 {Tags:["ec.rd_mechanic","ec.rd_dc_wall_pos"]}

# Spawn 4 rail lever interactions (at cardinal directions)
execute at @e[type=silverfish,tag=ec.rd_boss,limit=1] run summon interaction ~18 ~1 ~0 {Tags:["ec.rd_mechanic","ec.rd_dc_lever","ec.rd_dc_lever1"],width:1.5f,height:2.0f,response:1b}
execute at @e[type=silverfish,tag=ec.rd_boss,limit=1] run summon interaction ~-18 ~1 ~0 {Tags:["ec.rd_mechanic","ec.rd_dc_lever","ec.rd_dc_lever2"],width:1.5f,height:2.0f,response:1b}
execute at @e[type=silverfish,tag=ec.rd_boss,limit=1] run summon interaction ~0 ~1 ~18 {Tags:["ec.rd_mechanic","ec.rd_dc_lever","ec.rd_dc_lever3"],width:1.5f,height:2.0f,response:1b}
execute at @e[type=silverfish,tag=ec.rd_boss,limit=1] run summon interaction ~0 ~1 ~-18 {Tags:["ec.rd_mechanic","ec.rd_dc_lever","ec.rd_dc_lever4"],width:1.5f,height:2.0f,response:1b}

# Heal
schedule function evercraft:raids/boss/sync_hp 2t

tag @s add ec.rd_participant
data modify storage evercraft:raids active set value {boss_name:"The Deepcrawler",boss_color:"gray"}

# VFX
execute at @e[type=silverfish,tag=ec.rd_boss,limit=1] run particle minecraft:dust{color:[0.5,0.5,0.5],scale:1.5} ~ ~1 ~ 3 1 3 0 40
execute at @e[type=silverfish,tag=ec.rd_boss,limit=1] run playsound minecraft:entity.silverfish.ambient master @a ~ ~ ~ 2.0 0.3
execute at @e[type=silverfish,tag=ec.rd_boss,limit=1] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.8 0.8

tellraw @a [{text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"gray"}]
tellraw @a [{text:"  \u2620 ",color:"dark_gray"},{text:"The Deepcrawler",color:"gray",bold:true},{text:" erupts from the stone!",color:"dark_gray"}]
tellraw @a [{text:"  ",color:"dark_gray"},{text:"The rails lead down. Always down...",color:"dark_gray",italic:true}]
tellraw @a [{text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"gray"}]
