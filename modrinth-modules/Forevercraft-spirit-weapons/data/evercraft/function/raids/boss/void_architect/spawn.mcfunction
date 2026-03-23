# Spirit Raids — Boss 2: The Void Architect (End City)
# Called at the arena center, participants already tagged ec.rd_participant

# Calculate scaling
execute as @a[tag=ec.rd_participant,limit=1,sort=random] run function evercraft:raids/boss/setup/scale

# Set boss ID
scoreboard players set #rd_boss_id ec.var 2

# Summon — enderman base (tall, teleporting, thematic)
summon enderman ~ ~ ~ {Tags:["ec.rd_boss","ec.rd_va"],NoAI:0b,Silent:1b,PersistenceRequired:1b}

# Compute final HP: base 1400 × hp_scale / 100 (700 hearts)
scoreboard players set #rd_temp ec.var 1400
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
data modify storage evercraft:raids temp set value {boss_name:"The Void Architect",boss_color:"dark_purple",base_armor:12,base_speed:0.2d,base_damage:2.5d,boss_scale:1.6d,bar_color:"purple"}

# Apply setup
execute as @e[type=enderman,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/setup/setup_boss with storage evercraft:raids temp

# Apply HP
execute store result storage evercraft:raids temp.hp_mod int 1 run scoreboard players get #rd_boss_hp_max ec.var
execute as @e[type=enderman,tag=ec.rd_boss,limit=1] run function evercraft:raids/boss/setup/apply_hp with storage evercraft:raids temp

# Apply damage scaling
scoreboard players operation #rd_temp ec.var = #rd_dmg_scale ec.var
scoreboard players remove #rd_temp ec.var 100
execute if score #rd_temp ec.var matches 1.. store result storage evercraft:raids temp.dmg_pct double 0.01 run scoreboard players get #rd_temp ec.var
execute if score #rd_temp ec.var matches 1.. as @e[type=enderman,tag=ec.rd_boss,limit=1] run function evercraft:raids/boss/setup/apply_dmg with storage evercraft:raids temp

# Set bossbar
execute store result bossbar evercraft:raid_boss max run scoreboard players get #rd_boss_hp_max ec.var
execute store result bossbar evercraft:raid_boss value run scoreboard players get #rd_boss_hp_max ec.var
bossbar set evercraft:raid_boss visible true
bossbar set evercraft:raid_boss players @a[tag=ec.rd_participant]

# Initialize Void Architect state
scoreboard players set #rd_va_tp_cd ec.var 0
scoreboard players set #rd_va_proj_cd ec.var 0
scoreboard players set #rd_va_well_cd ec.var 0
scoreboard players set #rd_va_laser_angle ec.var 0

# Spawn 2 end crystal "pillars" as healing sources (armor stands with crystal particle)
execute at @e[type=enderman,tag=ec.rd_boss,limit=1] run summon armor_stand ~10 ~3 ~0 {Tags:["ec.rd_crystal","ec.rd_minion","ec.rd_va_crystal"],Small:1b,Invisible:1b,Invulnerable:0b,NoGravity:1b,Marker:0b,CustomName:{text:"End Crystal",color:"light_purple"},CustomNameVisible:1b}
execute at @e[type=enderman,tag=ec.rd_boss,limit=1] run summon armor_stand ~-10 ~3 ~0 {Tags:["ec.rd_crystal","ec.rd_minion","ec.rd_va_crystal"],Small:1b,Invisible:1b,Invulnerable:0b,NoGravity:1b,Marker:0b,CustomName:{text:"End Crystal",color:"light_purple"},CustomNameVisible:1b}

# Boss intro
tellraw @a[tag=ec.rd_participant] [{text:""},{"text":"══════════════════════════════","color":"dark_purple"}]
tellraw @a[tag=ec.rd_participant] [{text:"  💀 "},{"text":"The Void Architect","color":"dark_purple","bold":true},{"text":" materializes from the void...","color":"gray"}]
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"I have built worlds. I can unmake yours.\"","color":"light_purple","italic":true}]
tellraw @a[tag=ec.rd_participant] [{text:"══════════════════════════════","color":"dark_purple"}]
