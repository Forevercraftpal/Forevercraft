# Beastlord Spear — Per-tick handler
# Runs every game tick when any player has ec.bl_active
# Buffs vanilla tamed animals (wolves, cats, parrots) + mount speed

# === STEP 0: Delayed item restore (consume_item fires before item removal) ===
# Must run BEFORE weapon validation so Step 1 doesn't call remove and reset ec.bl_spear
execute as @a[tag=bl.restore] at @s run function evercraft:artifacts/beastlord/restore_item
tag @a[tag=bl.restore] remove bl.restore

# === STEP 1: Validate still holding a beastlord spear ===
execute as @a[tag=ec.bl_active] unless items entity @s weapon.mainhand *[custom_data~{beastlord:true}] run function evercraft:artifacts/beastlord/remove

# === STEP 2: Shield restriction (per-tick check) ===
execute as @a[tag=ec.bl_active] if items entity @s weapon.offhand minecraft:shield[custom_data~{tank:1b}] run function evercraft:artifacts/beastlord/shield_check

# === STEP 3: Strength aura refresh (every 40 ticks / 2 seconds) ===
scoreboard players remove @a[tag=ec.bl_active] ec.bl_str_tick 1
execute as @a[tag=ec.bl_active,scores={ec.bl_str_tick=..0}] at @s run function evercraft:artifacts/beastlord/apply_strength

# === STEP 4: Warp Strike timers (count game ticks → 1 second intervals) ===
scoreboard players add @a[tag=ec.bl_active] ec.bl_warp_sub 1
# OPT: 1s boundary work consolidated into sub-function (was 5 @a scans, now 1)
execute as @a[tag=ec.bl_active,scores={ec.bl_warp_sub=20..}] run function evercraft:artifacts/beastlord/tick_1s

# Fire warp strikes when timers hit 0
execute as @a[tag=ec.bl_active,scores={ec.bl_warp_w=..0}] at @s run function evercraft:artifacts/beastlord/warp/wolf
execute as @a[tag=ec.bl_active,scores={ec.bl_warp_c=..0}] at @s run function evercraft:artifacts/beastlord/warp/cat
execute as @a[tag=ec.bl_active,scores={ec.bl_warp_p=..0}] at @s run function evercraft:artifacts/beastlord/warp/parrot

# OPT: Cat phantom hunt + wolf armor repair moved to tick_1s (was per-tick, now 1s)

# === STEP 5: Spear-specific passives ===
execute as @a[tag=ec.bl_active,scores={ec.bl_spear=1}] run function evercraft:artifacts/beastlord/passive/boneclub
execute as @a[tag=ec.bl_active,scores={ec.bl_spear=2}] at @s run function evercraft:artifacts/beastlord/passive/lance
execute as @a[tag=ec.bl_active,scores={ec.bl_spear=4}] at @s run function evercraft:artifacts/beastlord/passive/bone_cudgel
execute as @a[tag=ec.bl_active,scores={ec.bl_spear=8}] run function evercraft:artifacts/beastlord/passive/longinus
execute as @a[tag=ec.bl_active,scores={ec.bl_spear=9}] run function evercraft:artifacts/beastlord/passive/dragonmaster_lance

# === STEP 8: Mount speed — Speed III to any mount while riding ===
execute as @a[tag=ec.bl_active] run function evercraft:artifacts/beastlord/mount_speed

# OPT: Wolf armor repair moved to tick_1s (was per-tick scan of ALL wolves)
