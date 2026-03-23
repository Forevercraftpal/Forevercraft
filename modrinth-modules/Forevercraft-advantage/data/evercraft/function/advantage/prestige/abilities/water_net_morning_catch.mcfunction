# Water Net — Morning Catch
# Run as: WaterNet marker at barrel position
# Called when: new day detected + morning window + active (valid water)

# Update last_catch_day to prevent re-triggering today
execute store result entity @s data.last_catch_day int 1 run scoreboard players get #current_day ec.var

# Determine catch count: 8 base, 16 with Master Angler (P3)
scoreboard players set @s adv.pa_cage_ct 8
execute if data entity @s {data:{master_angler:1b}} run scoreboard players set @s adv.pa_cage_ct 16

# Tempest Lip Ripper — Net Amplifier: double catches if any player has it in inventory
# Check once and store result for both doubling and notification
scoreboard players set #wn_lr adv.temp 0
execute as @a if items entity @s inventory.* *[custom_data~{artifact:"mythical_anglers_lip_ripper"}] run scoreboard players set #wn_lr adv.temp 1
execute if score #wn_lr adv.temp matches 1 run scoreboard players operation @s adv.pa_cage_ct *= #2 adv.temp

# Run the catch loop (recursive — decrements pa_cage_ct each iteration)
function evercraft:advantage/prestige/abilities/water_net_catch_loop

# === EFFECTS ===
# Sound
playsound minecraft:entity.fishing_bobber.splash master @a[distance=..32] ~ ~ ~ 1 0.8
playsound minecraft:block.bubble_column.upwards_ambient master @a[distance=..32] ~ ~ ~ 0.5 1.0

# Particles — splash and bubbles at barrel
particle minecraft:splash ~ ~1.1 ~ 0.3 0.1 0.3 0.5 30
particle minecraft:bubble ~ ~1.0 ~ 0.3 0.2 0.3 0.03 15

# Notify nearby players (4 variants: base, base+LR, master, master+LR)
execute if data entity @s {data:{master_angler:1b}} if score #wn_lr adv.temp matches 1 run tellraw @a[distance=..32] [{text:"✦ ",color:"gold"},{text:"Water Net",color:"aqua"},{text:" — Morning haul complete! ",color:"gray"},{text:"(32 catches, Master Angler + Tempest Lip Ripper)",color:"green"}]
execute if data entity @s {data:{master_angler:1b}} if score #wn_lr adv.temp matches 0 run tellraw @a[distance=..32] [{text:"✦ ",color:"gold"},{text:"Water Net",color:"aqua"},{text:" — Morning haul complete! ",color:"gray"},{text:"(16 catches, Master Angler)",color:"green"}]
execute unless data entity @s {data:{master_angler:1b}} if score #wn_lr adv.temp matches 1 run tellraw @a[distance=..32] [{text:"✦ ",color:"gold"},{text:"Water Net",color:"aqua"},{text:" — Morning haul complete! ",color:"gray"},{text:"(16 catches, Tempest Lip Ripper)",color:"green"}]
execute unless data entity @s {data:{master_angler:1b}} if score #wn_lr adv.temp matches 0 run tellraw @a[distance=..32] [{text:"✦ ",color:"gold"},{text:"Water Net",color:"aqua"},{text:" — Morning haul complete! ",color:"gray"},{text:"(8 catches)",color:"green"}]
