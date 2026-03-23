# Spirit Raids — Boss 4: The Arbiter (Trial Chambers)
# Called at the arena center, participants already tagged ec.rd_participant

# Calculate scaling
execute as @a[tag=ec.rd_participant,limit=1,sort=random] run function evercraft:raids/boss/setup/scale

# Set boss ID
scoreboard players set #rd_boss_id ec.var 4

# Summon — blaze base (floating, wind/fire theme)
summon blaze ~ ~2 ~ {Tags:["ec.rd_boss","ec.rd_arb"],NoAI:0b,Silent:1b,PersistenceRequired:1b}

# Compute final HP: base 1200 × hp_scale / 100 (600 hearts — lowest HP, highest mechanic density)
scoreboard players set #rd_temp ec.var 1200
scoreboard players operation #rd_temp ec.var *= #rd_hp_scale ec.var
scoreboard players operation #rd_temp ec.var /= #100 adv.temp
scoreboard players operation #rd_boss_hp_max ec.var = #rd_temp ec.var

# Phase thresholds: P2 at 66%, P3 at 33%
scoreboard players operation #rd_p2_threshold ec.var = #rd_boss_hp_max ec.var
scoreboard players set #rd_temp ec.var 66
scoreboard players operation #rd_p2_threshold ec.var *= #rd_temp ec.var
scoreboard players operation #rd_p2_threshold ec.var /= #100 adv.temp

scoreboard players operation #rd_p3_threshold ec.var = #rd_boss_hp_max ec.var
scoreboard players set #rd_temp ec.var 33
scoreboard players operation #rd_p3_threshold ec.var *= #rd_temp ec.var
scoreboard players operation #rd_p3_threshold ec.var /= #100 adv.temp

# Setup boss macro
data modify storage evercraft:raids temp set value {boss_name:"The Arbiter",boss_color:"aqua",base_armor:10,base_speed:0.15d,base_damage:4.0d,boss_scale:1.8d,bar_color:"white"}

# Apply setup
execute as @e[type=blaze,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/setup/setup_boss with storage evercraft:raids temp

# Apply HP
execute store result storage evercraft:raids temp.hp_mod int 1 run scoreboard players get #rd_boss_hp_max ec.var
execute as @e[type=blaze,tag=ec.rd_boss,limit=1] run function evercraft:raids/boss/setup/apply_hp with storage evercraft:raids temp

# Apply damage scaling
scoreboard players operation #rd_temp ec.var = #rd_dmg_scale ec.var
scoreboard players remove #rd_temp ec.var 100
execute if score #rd_temp ec.var matches 1.. store result storage evercraft:raids temp.dmg_pct double 0.01 run scoreboard players get #rd_temp ec.var
execute if score #rd_temp ec.var matches 1.. as @e[type=blaze,tag=ec.rd_boss,limit=1] run function evercraft:raids/boss/setup/apply_dmg with storage evercraft:raids temp

# Set bossbar
execute store result bossbar evercraft:raid_boss max run scoreboard players get #rd_boss_hp_max ec.var
execute store result bossbar evercraft:raid_boss value run scoreboard players get #rd_boss_hp_max ec.var
bossbar set evercraft:raid_boss visible true
bossbar set evercraft:raid_boss players @a[tag=ec.rd_participant]

# Initialize Arbiter state
scoreboard players set #rd_arb_mimic_cd ec.var 0
scoreboard players set #rd_arb_blast_cd ec.var 0
scoreboard players set #rd_arb_calm ec.var 0
scoreboard players set #rd_arb_zone_timer ec.var 0
scoreboard players set #rd_arb_zone_radius ec.var 15
scoreboard players set #rd_arb_tornado_cd ec.var 0

# Reset per-player phase 2 tick counters
scoreboard players set @a[tag=ec.rd_participant] ec.rd_zone_tick 0
scoreboard players set @a[tag=ec.rd_participant] ec.rd_wind_tick 0

# Boss intro
tellraw @a[tag=ec.rd_participant] [{text:""},{"text":"══════════════════════════════","color":"aqua"}]
tellraw @a[tag=ec.rd_participant] [{text:"  💀 "},{"text":"The Arbiter","color":"aqua","bold":true},{"text":" descends from the winds...","color":"gray"}]
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"You stand before judgment. There is no appeal.\"","color":"white","italic":true}]
tellraw @a[tag=ec.rd_participant] [{text:"══════════════════════════════","color":"aqua"}]
