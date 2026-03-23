# The Leviathan (#8) — Spawn
# Ocean Monument raid boss — Javelin class artifact (Soul Piercer)

scoreboard players set #rd_boss_id ec.var 8

# Summon elder guardian variant (guardian with heavy attributes)
execute anchored eyes positioned ^ ^ ^5 run summon guardian ~ ~ ~ {Tags:["ec.rd_boss","ec.rd_lv"],Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b}

# HP: 1500 (750 hearts)
scoreboard players set #rd_boss_hp_max ec.var 1500
scoreboard players set #rd_p2_threshold ec.var 990
scoreboard players set #rd_p3_threshold ec.var 495

# Attributes
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] run attribute @s max_health base set 1500
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] run tag @s add ec.rd_initializing
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] run attribute @s scale base set 3.0
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] run attribute @s armor modifier add evercraft:rd_boss/base 12 add_value
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/base 0.2 add_multiplied_base
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/base 4.0 add_multiplied_base
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] run attribute @s knockback_resistance modifier add evercraft:rd_boss/base 0.8 add_value

# Custom name
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] run data modify entity @s CustomName set value [{text:"☠ ",color:"dark_red"},{text:"The Leviathan",color:"dark_aqua",bold:true},{text:" ☠",color:"dark_red"}]
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] run data modify entity @s CustomNameVisible set value 1b

# Bossbar
bossbar remove evercraft:raid_boss
bossbar add evercraft:raid_boss [{text:"☠ ",color:"dark_red"},{text:"The Leviathan",color:"dark_aqua",bold:true},{text:" ☠",color:"dark_red"}]
bossbar set evercraft:raid_boss color blue
bossbar set evercraft:raid_boss max 1500
bossbar set evercraft:raid_boss value 1500
bossbar set evercraft:raid_boss visible true
bossbar set evercraft:raid_boss players @a[distance=..100]

# Initialize state
scoreboard players set #rd_active ec.var 1
scoreboard players set #rd_boss_phase ec.var 1
scoreboard players set #rd_timer ec.var 0
scoreboard players set #rd_phase_lock ec.var 0
scoreboard players set #rd_ability_cd ec.var 0

# Boss-specific state
scoreboard players set #rd_lv_laser_cd ec.var 60
scoreboard players set #rd_lv_wave_cd ec.var 240
scoreboard players set #rd_lv_burrow_cd ec.var 0
scoreboard players set #rd_lv_water_level ec.var 0
scoreboard players set #rd_lv_whirl_timer ec.var 0
scoreboard players set #rd_lv_sponges ec.var 0

# Sponge puzzle slots — 6 total: 4 valid, 2 traps
# Spread around arena edges at varied positions
execute anchored eyes positioned ^ ^ ^5 run summon interaction ~12 ~-1 ~8 {Tags:["ec.rd_lv_sponge","ec.rd_lv_sponge_valid","ec.rd_puzzle"],width:1.0f,height:1.0f,response:1b}
execute anchored eyes positioned ^ ^ ^5 run summon interaction ~-10 ~-1 ~14 {Tags:["ec.rd_lv_sponge","ec.rd_lv_sponge_valid","ec.rd_puzzle"],width:1.0f,height:1.0f,response:1b}
execute anchored eyes positioned ^ ^ ^5 run summon interaction ~-15 ~-1 ~-6 {Tags:["ec.rd_lv_sponge","ec.rd_lv_sponge_valid","ec.rd_puzzle"],width:1.0f,height:1.0f,response:1b}
execute anchored eyes positioned ^ ^ ^5 run summon interaction ~8 ~-1 ~-12 {Tags:["ec.rd_lv_sponge","ec.rd_lv_sponge_valid","ec.rd_puzzle"],width:1.0f,height:1.0f,response:1b}
execute anchored eyes positioned ^ ^ ^5 run summon interaction ~-5 ~-1 ~-15 {Tags:["ec.rd_lv_sponge","ec.rd_lv_sponge_trap","ec.rd_puzzle"],width:1.0f,height:1.0f,response:1b}
execute anchored eyes positioned ^ ^ ^5 run summon interaction ~14 ~-1 ~-4 {Tags:["ec.rd_lv_sponge","ec.rd_lv_sponge_trap","ec.rd_puzzle"],width:1.0f,height:1.0f,response:1b}

# Heal to full
schedule function evercraft:raids/boss/sync_hp 2t

# Mark participant
tag @s add ec.rd_participant

# Storage
data modify storage evercraft:raids active set value {boss_name:"The Leviathan",boss_color:"dark_aqua"}

# VFX
execute at @e[type=guardian,tag=ec.rd_boss,limit=1] run particle minecraft:bubble ~ ~1 ~ 2 2 2 0.1 50
execute at @e[type=guardian,tag=ec.rd_boss,limit=1] run particle minecraft:dolphin ~ ~1 ~ 1 1 1 0.05 30
execute at @e[type=guardian,tag=ec.rd_boss,limit=1] run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1.0 0.6
execute at @e[type=guardian,tag=ec.rd_boss,limit=1] run playsound minecraft:entity.elder_guardian.ambient master @a ~ ~ ~ 1.0 0.8

# Announce
tellraw @a [{text:"═══════════════════════════════",color:"dark_aqua"}]
tellraw @a [{text:"  ☠ ",color:"dark_red"},{text:"The Leviathan",color:"dark_aqua",bold:true},{text:" rises from the depths!",color:"blue"}]
tellraw @a [{text:"  ",color:"dark_gray"},{text:"The water pressure should have killed you...",color:"gray",italic:true}]
tellraw @a [{text:"═══════════════════════════════",color:"dark_aqua"}]
