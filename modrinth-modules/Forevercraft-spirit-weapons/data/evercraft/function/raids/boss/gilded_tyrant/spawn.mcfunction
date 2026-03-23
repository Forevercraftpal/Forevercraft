# Spirit Raids — Boss 3: The Gilded Tyrant (Bastion Remnant)
# Called at the arena center, participants already tagged ec.rd_participant

# Calculate scaling
execute as @a[tag=ec.rd_participant,limit=1,sort=random] run function evercraft:raids/boss/setup/scale

# Set boss ID
scoreboard players set #rd_boss_id ec.var 3

# Summon — piglin brute base (aggressive, tanky, thematic)
summon piglin_brute ~ ~ ~ {Tags:["ec.rd_boss","ec.rd_gt"],NoAI:0b,Silent:1b,PersistenceRequired:1b,IsImmuneToZombification:1b}

# Compute final HP: base 2000 × hp_scale / 100 (1000 hearts — tankiest boss)
scoreboard players set #rd_temp ec.var 2000
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
data modify storage evercraft:raids temp set value {boss_name:"The Gilded Tyrant",boss_color:"gold",base_armor:20,base_speed:0.25d,base_damage:6.0d,boss_scale:1.4d,bar_color:"yellow"}

# Apply setup
execute as @e[type=piglin_brute,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/setup/setup_boss with storage evercraft:raids temp

# Apply HP
execute store result storage evercraft:raids temp.hp_mod int 1 run scoreboard players get #rd_boss_hp_max ec.var
execute as @e[type=piglin_brute,tag=ec.rd_boss,limit=1] run function evercraft:raids/boss/setup/apply_hp with storage evercraft:raids temp

# Apply damage scaling
scoreboard players operation #rd_temp ec.var = #rd_dmg_scale ec.var
scoreboard players remove #rd_temp ec.var 100
execute if score #rd_temp ec.var matches 1.. store result storage evercraft:raids temp.dmg_pct double 0.01 run scoreboard players get #rd_temp ec.var
execute if score #rd_temp ec.var matches 1.. as @e[type=piglin_brute,tag=ec.rd_boss,limit=1] run function evercraft:raids/boss/setup/apply_dmg with storage evercraft:raids temp

# Set bossbar
execute store result bossbar evercraft:raid_boss max run scoreboard players get #rd_boss_hp_max ec.var
execute store result bossbar evercraft:raid_boss value run scoreboard players get #rd_boss_hp_max ec.var
bossbar set evercraft:raid_boss visible true
bossbar set evercraft:raid_boss players @a[tag=ec.rd_participant]

# Initialize Gilded Tyrant state
scoreboard players set #rd_gt_charge_cd ec.var 0
scoreboard players set #rd_gt_slam_cd ec.var 0
scoreboard players set #rd_gt_add_cd ec.var 0
scoreboard players set #rd_gt_gold_bomb_cd ec.var 0
scoreboard players set #rd_gt_lava_timer ec.var 0
scoreboard players set #rd_gt_lava_stage ec.var 0
scoreboard players set #rd_gt_melee_cd ec.var 0
scoreboard players reset @a[tag=ec.rd_participant] ec.rd_gold

# Boss intro
tellraw @a[tag=ec.rd_participant] [{text:""},{"text":"══════════════════════════════","color":"gold"}]
tellraw @a[tag=ec.rd_participant] [{text:"  💀 "},{"text":"The Gilded Tyrant","color":"gold","bold":true},{"text":" rises from the golden throne...","color":"gray"}]
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"Gold is power. Power is mine. And you... are trespassers.\"","color":"yellow","italic":true}]
tellraw @a[tag=ec.rd_participant] [{text:"══════════════════════════════","color":"gold"}]
