# Spirit Raids — Boss 1: The Hollow Sovereign (Ancient City)
# Called at the arena center position, participants already tagged ec.rd_participant

# Calculate scaling (sets #rd_hp_scale, #rd_dmg_scale)
# Run as a participant player for DR attribute read
execute as @a[tag=ec.rd_participant,limit=1,sort=random] run function evercraft:raids/boss/setup/scale

# Set boss ID
scoreboard players set #rd_boss_id ec.var 1

# Summon the boss — wither_skeleton base (tall, dark, menacing)
summon wither_skeleton ~ ~ ~ {Tags:["ec.rd_boss","ec.rd_hs","ec.rd_hs_real"],NoAI:0b,equipment:{mainhand:{id:"minecraft:netherite_sword",components:{"minecraft:enchantment_glint_override":true}},head:{id:"minecraft:wither_skeleton_skull"}}}

# Compute final HP: base 1600 × hp_scale / 100
# (800 hearts = 1600 HP)
scoreboard players set #rd_temp ec.var 1600
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

# Prepare storage params for setup_boss macro
data modify storage evercraft:raids temp set value {boss_name:"The Hollow Sovereign",boss_color:"dark_aqua",base_armor:15,base_speed:0.1d,base_damage:3.0d,boss_scale:1.8d,bar_color:"blue"}

# Apply setup (attributes, name, bossbar, VFX)
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] at @s run function evercraft:raids/boss/setup/setup_boss with storage evercraft:raids temp

# Apply HP via base set
execute store result storage evercraft:raids temp.hp_mod int 1 run scoreboard players get #rd_boss_hp_max ec.var
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run function evercraft:raids/boss/setup/apply_hp with storage evercraft:raids temp

# Apply DR/multiplayer damage scaling as additional modifier
scoreboard players operation #rd_temp ec.var = #rd_dmg_scale ec.var
scoreboard players remove #rd_temp ec.var 100
execute if score #rd_temp ec.var matches 1.. store result storage evercraft:raids temp.dmg_pct double 0.01 run scoreboard players get #rd_temp ec.var
execute if score #rd_temp ec.var matches 1.. as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run function evercraft:raids/boss/setup/apply_dmg with storage evercraft:raids temp

# Set bossbar HP values
execute store result bossbar evercraft:raid_boss max run scoreboard players get #rd_boss_hp_max ec.var
execute store result bossbar evercraft:raid_boss value run scoreboard players get #rd_boss_hp_max ec.var
bossbar set evercraft:raid_boss visible true
bossbar set evercraft:raid_boss players @a[tag=ec.rd_participant]

# Initialize Hollow Sovereign state — Phase 1: The Stalker
# Boss starts INVISIBLE
execute as @e[type=wither_skeleton,tag=ec.rd_boss,limit=1] run effect give @s invisibility infinite 0 true
scoreboard players set #rd_hs_vis_timer ec.var 0
scoreboard players set #rd_hs_hits ec.var 0
scoreboard players set #rd_hs_silence ec.var 0
scoreboard players set #rd_hs_silence_timer ec.var 0
scoreboard players set #rd_hs_tendril_cd ec.var 0
scoreboard players set #rd_hs_shadow_cd ec.var 0

# Boss intro dialogue
tellraw @a[tag=ec.rd_participant] [{text:""},{"text":"══════════════════════════════","color":"dark_aqua"}]
tellraw @a[tag=ec.rd_participant] [{text:"  💀 "},{"text":"The Hollow Sovereign","color":"dark_aqua","bold":true},{"text":" rises from the sculk...","color":"gray"}]
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"You dare trespass upon the Hollow Throne?\"","color":"aqua","italic":true}]
tellraw @a[tag=ec.rd_participant] [{text:"══════════════════════════════","color":"dark_aqua"}]

# Give players Darkness for atmosphere (5 seconds initial)
effect give @a[tag=ec.rd_participant] darkness 5 0
