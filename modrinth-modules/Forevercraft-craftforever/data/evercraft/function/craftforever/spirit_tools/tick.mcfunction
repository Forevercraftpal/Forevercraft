# Spirit Tools — Main tick (called when any player holds a spirit tool)
# Gated by: execute if entity @a[tag=ec.st_held]

# === MARKER PROCESSING (break detection for mining abilities) ===
# OPT: Gate with existence checks
execute if entity @e[type=marker,tag=ec.st_pick_target,limit=1] run function evercraft:craftforever/spirit_tools/process_markers
execute if entity @e[type=marker,tag=ec.st_shov_target,limit=1] run function evercraft:craftforever/spirit_tools/process_markers
execute if entity @e[type=marker,tag=ec.st_axe_target,limit=1] run function evercraft:craftforever/spirit_tools/process_markers

# === RAYCAST PLACEMENT (per-player, places markers at target block) ===
execute as @a[tag=ec.st_held] at @s run function evercraft:craftforever/spirit_tools/check_player

# === EFFECT REFRESH COUNTER ===
scoreboard players add #st_effect_cd ec.var 1
execute if score #st_effect_cd ec.var matches 40.. run scoreboard players set #st_effect_cd ec.var 0

# === DISPATCH PASSIVES ===
execute as @a[tag=ec.st_held,scores={ec.st_tool=1}] at @s run function evercraft:craftforever/spirit_tools/earthsong/passive
execute as @a[tag=ec.st_held,scores={ec.st_tool=2}] at @s run function evercraft:craftforever/spirit_tools/bloomweaver/passive
execute as @a[tag=ec.st_held,scores={ec.st_tool=3}] at @s run function evercraft:craftforever/spirit_tools/tidecaller/passive
execute as @a[tag=ec.st_held,scores={ec.st_tool=4}] at @s run function evercraft:craftforever/spirit_tools/dustwalker/passive
execute as @a[tag=ec.st_held,scores={ec.st_tool=5}] at @s run function evercraft:craftforever/spirit_tools/heartwood/passive
execute as @a[tag=ec.st_held,scores={ec.st_tool=6}] at @s run function evercraft:craftforever/spirit_tools/silkgrasp/passive

# === SNEAK DETECTION FOR MASTERY (FIX #3: 5-tick debounce) ===
# Track sneak state
execute as @a[tag=ec.st_held] store result score @s ec.st_is_snk run execute if predicate evercraft:is_sneaking
# Increment sneak timer while sneaking, reset when not
execute as @a[tag=ec.st_held,scores={ec.st_is_snk=1}] run scoreboard players add @s ec.st_snk_timer 1
execute as @a[tag=ec.st_held,scores={ec.st_is_snk=0}] run scoreboard players set @s ec.st_snk_timer 0
# Fire mastery when sneak timer hits exactly 5 (debounced start) and off cooldown
execute as @a[tag=ec.st_held,scores={ec.st_snk_timer=5,ec.st_cd=..0}] at @s run function evercraft:craftforever/spirit_tools/try_mastery

# === ITEM MAGNET (for tools with magnet passive) ===
# Earthsong (1), Heartwood (5): 16-block. Silkgrasp (6): 12-block.
# Only pull items older than 10 ticks (let drops visually pop out first)
execute as @a[tag=ec.st_held,scores={ec.st_tool=1}] at @s as @e[type=item,distance=2..16,limit=8] run tp @s ~ ~ ~ ~ ~
execute as @a[tag=ec.st_held,scores={ec.st_tool=1}] at @s run tp @e[type=experience_orb,distance=2..16,limit=8] @s
execute as @a[tag=ec.st_held,scores={ec.st_tool=5}] at @s as @e[type=item,distance=2..16,limit=8] run tp @s ~ ~ ~ ~ ~
execute as @a[tag=ec.st_held,scores={ec.st_tool=5}] at @s run tp @e[type=experience_orb,distance=2..16,limit=8] @s
execute as @a[tag=ec.st_held,scores={ec.st_tool=6}] at @s as @e[type=item,distance=2..12,limit=8] run tp @s ~ ~ ~ ~ ~

# === CRAFTING AFFINITY — Set class from tool ID ===
execute as @a[tag=ec.st_held] run scoreboard players operation @s ec.caff_class = @s ec.st_tool
# Copy current class boost to generic
execute as @a[tag=ec.st_held,scores={ec.caff_class=1}] run scoreboard players operation @s ec.caff_boost = @s ec.caffb_ss
execute as @a[tag=ec.st_held,scores={ec.caff_class=2}] run scoreboard players operation @s ec.caff_boost = @s ec.caffb_lf
execute as @a[tag=ec.st_held,scores={ec.caff_class=3}] run scoreboard players operation @s ec.caff_boost = @s ec.caffb_gs
execute as @a[tag=ec.st_held,scores={ec.caff_class=4}] run scoreboard players operation @s ec.caff_boost = @s ec.caffb_tw
execute as @a[tag=ec.st_held,scores={ec.caff_class=5}] run scoreboard players operation @s ec.caff_boost = @s ec.caffb_sc
execute as @a[tag=ec.st_held,scores={ec.caff_class=6}] run scoreboard players operation @s ec.caff_boost = @s ec.caffb_lm

# === CRAFTING AFFINITY — PERMANENT TICK (stage 7 bonuses without tool) ===
scoreboard players add #caff_ptimer ec.var 1
execute if score #caff_ptimer ec.var matches 40.. run scoreboard players set #caff_ptimer ec.var 0
execute if score #caff_ptimer ec.var matches 0 as @a at @s run function evercraft:craft_affinity/permanent_tick

# === ANTI-CASCADE CLEANUP ===
# Clear the mining lock tag at end of tick (allows next tick's break to trigger normally)
tag @a[tag=ec.st_mining] remove ec.st_mining
