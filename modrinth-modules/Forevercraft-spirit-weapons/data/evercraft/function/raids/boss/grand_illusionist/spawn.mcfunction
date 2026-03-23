# Spirit Raids — Boss 6: The Grand Illusionist (Woodland Mansion)
# Called at the arena center, participants already tagged ec.rd_participant

# Calculate scaling
execute as @a[tag=ec.rd_participant,limit=1,sort=random] run function evercraft:raids/boss/setup/scale

# Set boss ID
scoreboard players set #rd_boss_id ec.var 6

# Summon — evoker base (spell-casting, illusion theme)
summon evoker ~ ~ ~ {Tags:["ec.rd_boss","ec.rd_gi"],NoAI:0b,Silent:1b,PersistenceRequired:1b}

# Compute final HP: base 1300 × hp_scale / 100 (650 hearts)
scoreboard players set #rd_temp ec.var 1300
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
data modify storage evercraft:raids temp set value {boss_name:"The Grand Illusionist",boss_color:"red",base_armor:8,base_speed:0.2d,base_damage:3.0d,boss_scale:1.3d,bar_color:"red"}

# Apply setup
execute as @e[type=evoker,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/setup/setup_boss with storage evercraft:raids temp

# Apply HP
execute store result storage evercraft:raids temp.hp_mod int 1 run scoreboard players get #rd_boss_hp_max ec.var
execute as @e[type=evoker,tag=ec.rd_boss,limit=1] run function evercraft:raids/boss/setup/apply_hp with storage evercraft:raids temp

# Apply damage scaling
scoreboard players operation #rd_temp ec.var = #rd_dmg_scale ec.var
scoreboard players remove #rd_temp ec.var 100
execute if score #rd_temp ec.var matches 1.. store result storage evercraft:raids temp.dmg_pct double 0.01 run scoreboard players get #rd_temp ec.var
execute if score #rd_temp ec.var matches 1.. as @e[type=evoker,tag=ec.rd_boss,limit=1] run function evercraft:raids/boss/setup/apply_dmg with storage evercraft:raids temp

# Set bossbar
execute store result bossbar evercraft:raid_boss max run scoreboard players get #rd_boss_hp_max ec.var
execute store result bossbar evercraft:raid_boss value run scoreboard players get #rd_boss_hp_max ec.var
bossbar set evercraft:raid_boss visible true
bossbar set evercraft:raid_boss players @a[tag=ec.rd_participant]

# Initialize Grand Illusionist state
scoreboard players set #rd_gi_vex_cd ec.var 0
scoreboard players set #rd_gi_fang_cd ec.var 0
scoreboard players set #rd_gi_blind_cd ec.var 0
scoreboard players set #rd_gi_totem_cd ec.var 0
scoreboard players set #rd_gi_vis_timer ec.var 0
scoreboard players set #rd_gi_poison_cd ec.var 0
scoreboard players set #rd_gi_ravager_dead ec.var 0

# Spawn 5 illusion copies
function evercraft:raids/boss/grand_illusionist/abilities/spawn_copies

# Boss intro
tellraw @a[tag=ec.rd_participant] [{text:""},{"text":"══════════════════════════════","color":"red"}]
tellraw @a[tag=ec.rd_participant] [{text:"  💀 "},{"text":"The Grand Illusionist","color":"red","bold":true},{"text":" appears in five places at once...","color":"gray"}]
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"Which one is real? Does it matter? You will fall to all of them.\"","color":"dark_red","italic":true}]
tellraw @a[tag=ec.rd_participant] [{text:"══════════════════════════════","color":"red"}]
