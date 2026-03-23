# The Crimson Bulwark (#13) — Spawn
# Castle floor 25 raid boss — Tank class artifact (Bulwark Shield)

scoreboard players set #rd_boss_id ec.var 13

# Summon vindicator (massive shielded warrior)
execute anchored eyes positioned ^ ^ ^5 run summon vindicator ~ ~ ~ {Tags:["ec.rd_boss","ec.rd_cb"],Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b}

# HP: 2200 (1100 hearts) — THE tankiest boss
scoreboard players set #rd_boss_hp_max ec.var 2200
scoreboard players set #rd_p2_threshold ec.var 1452
scoreboard players set #rd_p3_threshold ec.var 726

# Attributes
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run attribute @s max_health base set 2200
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run tag @s add ec.rd_initializing
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run attribute @s scale base set 2.0
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run attribute @s armor modifier add evercraft:rd_boss/base 20 add_value
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/base -0.2 add_multiplied_base
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/base 2.0 add_multiplied_base
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run attribute @s knockback_resistance modifier add evercraft:rd_boss/base 1.0 add_value

# Custom name
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run data modify entity @s CustomName set value [{text:"\u2620 ",color:"dark_red"},{text:"The Crimson Bulwark",color:"red",bold:true},{text:" \u2620",color:"dark_red"}]
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run data modify entity @s CustomNameVisible set value 1b

# Bossbar
bossbar remove evercraft:raid_boss
bossbar add evercraft:raid_boss [{text:"\u2620 ",color:"dark_red"},{text:"The Crimson Bulwark",color:"red",bold:true},{text:" \u2620",color:"dark_red"}]
bossbar set evercraft:raid_boss color red
bossbar set evercraft:raid_boss max 2200
bossbar set evercraft:raid_boss value 2200
bossbar set evercraft:raid_boss visible true
bossbar set evercraft:raid_boss players @a[distance=..100]

# State
scoreboard players set #rd_active ec.var 1
scoreboard players set #rd_boss_phase ec.var 1
scoreboard players set #rd_timer ec.var 0
scoreboard players set #rd_phase_lock ec.var 0
scoreboard players set #rd_ability_cd ec.var 0
scoreboard players set #rd_cb_slam_cd ec.var 0
scoreboard players set #rd_cb_guard_cd ec.var 0
scoreboard players set #rd_cb_reflect ec.var 0
scoreboard players set #rd_cb_spin_cd ec.var 0
scoreboard players set #rd_cb_throw_cd ec.var 0
scoreboard players set #rd_cb_pillar_hp1 ec.var 3
scoreboard players set #rd_cb_pillar_hp2 ec.var 3
scoreboard players set #rd_cb_pillar_hp3 ec.var 3
scoreboard players set #rd_cb_pillar_hp4 ec.var 3

# Spawn 4 destructible pillar interactions (cover for shield throws)
execute at @e[type=vindicator,tag=ec.rd_boss,limit=1] run summon interaction ~10 ~1 ~0 {Tags:["ec.rd_mechanic","ec.rd_cb_pillar","ec.rd_cb_pillar1"],width:2.0f,height:3.0f,response:1b}
execute at @e[type=vindicator,tag=ec.rd_boss,limit=1] run summon interaction ~-10 ~1 ~0 {Tags:["ec.rd_mechanic","ec.rd_cb_pillar","ec.rd_cb_pillar2"],width:2.0f,height:3.0f,response:1b}
execute at @e[type=vindicator,tag=ec.rd_boss,limit=1] run summon interaction ~0 ~1 ~10 {Tags:["ec.rd_mechanic","ec.rd_cb_pillar","ec.rd_cb_pillar3"],width:2.0f,height:3.0f,response:1b}
execute at @e[type=vindicator,tag=ec.rd_boss,limit=1] run summon interaction ~0 ~1 ~-10 {Tags:["ec.rd_mechanic","ec.rd_cb_pillar","ec.rd_cb_pillar4"],width:2.0f,height:3.0f,response:1b}

# Spawn 4 banner interactions (puzzle)
execute at @e[type=vindicator,tag=ec.rd_boss,limit=1] run summon interaction ~14 ~1 ~0 {Tags:["ec.rd_mechanic","ec.rd_cb_banner"],width:1.5f,height:2.5f,response:1b}
execute at @e[type=vindicator,tag=ec.rd_boss,limit=1] run summon interaction ~-14 ~1 ~0 {Tags:["ec.rd_mechanic","ec.rd_cb_banner"],width:1.5f,height:2.5f,response:1b}
execute at @e[type=vindicator,tag=ec.rd_boss,limit=1] run summon interaction ~0 ~1 ~14 {Tags:["ec.rd_mechanic","ec.rd_cb_banner"],width:1.5f,height:2.5f,response:1b}
execute at @e[type=vindicator,tag=ec.rd_boss,limit=1] run summon interaction ~0 ~1 ~-14 {Tags:["ec.rd_mechanic","ec.rd_cb_banner"],width:1.5f,height:2.5f,response:1b}

# Heal
schedule function evercraft:raids/boss/sync_hp 2t

tag @s add ec.rd_participant
data modify storage evercraft:raids active set value {boss_name:"The Crimson Bulwark",boss_color:"red"}

# VFX
execute at @e[type=vindicator,tag=ec.rd_boss,limit=1] run particle minecraft:dust{color:[0.8,0.1,0.1],scale:1.5} ~ ~1 ~ 3 1 3 0 40
execute at @e[type=vindicator,tag=ec.rd_boss,limit=1] run playsound minecraft:entity.vindicator.ambient master @a ~ ~ ~ 2.0 0.3
execute at @e[type=vindicator,tag=ec.rd_boss,limit=1] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.8 0.8

tellraw @a [{text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"red"}]
tellraw @a [{text:"  \u2620 ",color:"dark_red"},{text:"The Crimson Bulwark",color:"red",bold:true},{text:" rises from the throne!",color:"dark_red"}]
tellraw @a [{text:"  ",color:"dark_gray"},{text:"It guards the concept of walls.",color:"gray",italic:true}]
tellraw @a [{text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"red"}]
