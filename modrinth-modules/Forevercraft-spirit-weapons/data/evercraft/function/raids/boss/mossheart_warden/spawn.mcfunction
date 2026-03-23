# The Mossheart Warden (#12) — Spawn
# Dungeon raid boss — Knight class artifact (Wyrmcleaver)

scoreboard players set #rd_boss_id ec.var 12

# Summon iron golem (mossy tank)
execute anchored eyes positioned ^ ^ ^5 run summon iron_golem ~ ~ ~ {Tags:["ec.rd_boss","ec.rd_mw"],Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b,PlayerCreated:0b}

# HP: 1900 (950 hearts)
scoreboard players set #rd_boss_hp_max ec.var 1900
scoreboard players set #rd_p2_threshold ec.var 1254
scoreboard players set #rd_p3_threshold ec.var 627

# Attributes
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s max_health base set 1900
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run tag @s add ec.rd_initializing
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s scale base set 1.8
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s armor modifier add evercraft:rd_boss/base 16 add_value
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/base -0.3 add_multiplied_base
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/base 0.5 add_multiplied_base
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s knockback_resistance modifier add evercraft:rd_boss/base 1.0 add_value

# Custom name
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run data modify entity @s CustomName set value [{text:"\u2620 ",color:"dark_green"},{text:"The Mossheart Warden",color:"green",bold:true},{text:" \u2620",color:"dark_green"}]
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run data modify entity @s CustomNameVisible set value 1b

# Bossbar
bossbar remove evercraft:raid_boss
bossbar add evercraft:raid_boss [{text:"\u2620 ",color:"dark_green"},{text:"The Mossheart Warden",color:"green",bold:true},{text:" \u2620",color:"dark_green"}]
bossbar set evercraft:raid_boss color green
bossbar set evercraft:raid_boss max 1900
bossbar set evercraft:raid_boss value 1900
bossbar set evercraft:raid_boss visible true
bossbar set evercraft:raid_boss players @a[distance=..100]

# State
scoreboard players set #rd_active ec.var 1
scoreboard players set #rd_boss_phase ec.var 1
scoreboard players set #rd_timer ec.var 0
scoreboard players set #rd_phase_lock ec.var 0
scoreboard players set #rd_ability_cd ec.var 0
scoreboard players set #rd_mw_core_cd ec.var 0
scoreboard players set #rd_mw_cores_active ec.var 0
scoreboard players set #rd_mw_slam_cd ec.var 0
scoreboard players set #rd_mw_fissure_cd ec.var 0

# Spawn 4 mob spawner core interactions
execute at @e[type=iron_golem,tag=ec.rd_boss,limit=1] run summon interaction ~12 ~1 ~0 {Tags:["ec.rd_mechanic","ec.rd_mw_core","ec.rd_mw_core1"],width:2.0f,height:2.5f,response:1b}
execute at @e[type=iron_golem,tag=ec.rd_boss,limit=1] run summon interaction ~-12 ~1 ~0 {Tags:["ec.rd_mechanic","ec.rd_mw_core","ec.rd_mw_core2"],width:2.0f,height:2.5f,response:1b}
execute at @e[type=iron_golem,tag=ec.rd_boss,limit=1] run summon interaction ~0 ~1 ~12 {Tags:["ec.rd_mechanic","ec.rd_mw_core","ec.rd_mw_core3"],width:2.0f,height:2.5f,response:1b}
execute at @e[type=iron_golem,tag=ec.rd_boss,limit=1] run summon interaction ~0 ~1 ~-12 {Tags:["ec.rd_mechanic","ec.rd_mw_core","ec.rd_mw_core4"],width:2.0f,height:2.5f,response:1b}

# Spawn 6 iron bar gate interactions (breakable)
execute at @e[type=iron_golem,tag=ec.rd_boss,limit=1] run summon interaction ~6 ~1 ~0 {Tags:["ec.rd_mechanic","ec.rd_mw_gate"],width:3.0f,height:3.0f,response:1b}
execute at @e[type=iron_golem,tag=ec.rd_boss,limit=1] run summon interaction ~-6 ~1 ~0 {Tags:["ec.rd_mechanic","ec.rd_mw_gate"],width:3.0f,height:3.0f,response:1b}
execute at @e[type=iron_golem,tag=ec.rd_boss,limit=1] run summon interaction ~0 ~1 ~6 {Tags:["ec.rd_mechanic","ec.rd_mw_gate"],width:3.0f,height:3.0f,response:1b}
execute at @e[type=iron_golem,tag=ec.rd_boss,limit=1] run summon interaction ~0 ~1 ~-6 {Tags:["ec.rd_mechanic","ec.rd_mw_gate"],width:3.0f,height:3.0f,response:1b}
execute at @e[type=iron_golem,tag=ec.rd_boss,limit=1] run summon interaction ~6 ~1 ~6 {Tags:["ec.rd_mechanic","ec.rd_mw_gate"],width:3.0f,height:3.0f,response:1b}
execute at @e[type=iron_golem,tag=ec.rd_boss,limit=1] run summon interaction ~-6 ~1 ~-6 {Tags:["ec.rd_mechanic","ec.rd_mw_gate"],width:3.0f,height:3.0f,response:1b}

# Heal
schedule function evercraft:raids/boss/sync_hp 2t

tag @s add ec.rd_participant
data modify storage evercraft:raids active set value {boss_name:"The Mossheart Warden",boss_color:"green"}

# VFX
execute at @e[type=iron_golem,tag=ec.rd_boss,limit=1] run particle minecraft:happy_villager ~ ~1 ~ 3 1 3 0.1 30
execute at @e[type=iron_golem,tag=ec.rd_boss,limit=1] run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 2.0 0.3
execute at @e[type=iron_golem,tag=ec.rd_boss,limit=1] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.8 0.8

tellraw @a [{text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"green"}]
tellraw @a [{text:"  \u2620 ",color:"dark_green"},{text:"The Mossheart Warden",color:"green",bold:true},{text:" awakens from the stone!",color:"dark_green"}]
tellraw @a [{text:"  ",color:"dark_gray"},{text:"The walls breathe. The stone has a heartbeat.",color:"gray",italic:true}]
tellraw @a [{text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"green"}]
