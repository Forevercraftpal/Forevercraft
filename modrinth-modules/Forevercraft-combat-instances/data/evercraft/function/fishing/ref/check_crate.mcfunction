# Check if player should receive a crate when fishing
# Called from on_catch (advancement-based detection via fishing_rod_hooked)

# Dream Surge Event: Ornate+ only with 2% mythical
execute if score #ec_event_active ec.var matches 1 run function evercraft:event/roll_event_crate_fish
execute if score #ec_event_active ec.var matches 1 run return 0

# Check inventory space
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Normal mode: Give loot from the crate loot table (weighted random)
execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crate
# Inv full: roll rarity via function (enforces dream rate gating + derby bypass)
# Process functions handle stats tracking and inv_full spawn internally
scoreboard players set #any_dropped ec.var 0
execute if score #inv_full ec.var matches 1 at @s run function evercraft:fishing/ref/roll_crate_direct

# === ROD ABILITIES (on-catch procs) ===
# OPT: Tag-gate each rod type once, then use tag for all subsequent commands (was 4-10 item checks per rod)

# Tempest Lip Ripper — Treasure Hunter: second crate roll when held
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"mythical_anglers_lip_ripper"}] run tag @s add ec._lip
execute if entity @s[tag=ec._lip] if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crate
execute if entity @s[tag=ec._lip] if score #inv_full ec.var matches 1 at @s run function evercraft:fishing/ref/roll_crate_direct
tag @s remove ec._lip

# Marrow Caster — Bone Lure: 5% chance for mob crate loot
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"rare_bone_fishing_rod"}] run tag @s add ec._bone
execute if entity @s[tag=ec._bone] store result score #rod_roll adv.temp run random value 1..100
execute if entity @s[tag=ec._bone] if score #rod_roll adv.temp matches 1..5 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:mob_crates/common
execute if entity @s[tag=ec._bone] if score #rod_roll adv.temp matches 1..5 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:mob_crates/common
execute if entity @s[tag=ec._bone] if score #rod_roll adv.temp matches 1..5 run tellraw @s [{text:"Bone Lure ",color:"aqua"},{text:"activated! Creature loot pulled from the depths.",color:"gray",italic:true}]
execute if entity @s[tag=ec._bone] if score #rod_roll adv.temp matches 1..5 run playsound minecraft:entity.skeleton.ambient master @s ~ ~ ~ 0.6 1.2
tag @s remove ec._bone

# Petalwhip — Harvest Hook: 5% chance for harvest crate loot
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"ornate_blossom_fishing_rod"}] run tag @s add ec._petal
execute if entity @s[tag=ec._petal] store result score #rod_roll adv.temp run random value 1..100
execute if entity @s[tag=ec._petal] if score #rod_roll adv.temp matches 1..5 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crate
execute if entity @s[tag=ec._petal] if score #rod_roll adv.temp matches 1..5 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crate_direct
execute if entity @s[tag=ec._petal] if score #rod_roll adv.temp matches 1..5 run tellraw @s [{text:"Harvest Hook ",color:"dark_purple"},{text:"activated! Nature's bounty rises.",color:"gray",italic:true}]
execute if entity @s[tag=ec._petal] if score #rod_roll adv.temp matches 1..5 run playsound minecraft:block.cherry_leaves.break master @s ~ ~ ~ 0.8 1.0
tag @s remove ec._petal

# Infernal Hook — Nether Dredge: 5% chance (15% in Nether) for nether loot + Searing Line
execute if items entity @s weapon.mainhand fishing_rod[custom_data~{artifact:"exquisite_ember_fishing_rod"}] run tag @s add ec._ember
execute if entity @s[tag=ec._ember] in minecraft:overworld store result score #rod_roll adv.temp run random value 1..100
execute if entity @s[tag=ec._ember] in minecraft:overworld if score #rod_roll adv.temp matches 1..5 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/nether_dredge
execute if entity @s[tag=ec._ember] in minecraft:overworld if score #rod_roll adv.temp matches 1..5 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/nether_dredge
execute if entity @s[tag=ec._ember] in minecraft:overworld if score #rod_roll adv.temp matches 1..5 run tellraw @s [{text:"Nether Dredge! ",color:"gold"},{text:"Volcanic spoils surface.",color:"gray",italic:true}]
execute if entity @s[tag=ec._ember] in minecraft:overworld if score #rod_roll adv.temp matches 1..5 run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 0.5 0.8
execute if entity @s[tag=ec._ember] in minecraft:the_nether store result score #rod_roll adv.temp run random value 1..100
execute if entity @s[tag=ec._ember] in minecraft:the_nether if score #rod_roll adv.temp matches 1..15 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/nether_dredge
execute if entity @s[tag=ec._ember] in minecraft:the_nether if score #rod_roll adv.temp matches 1..15 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/nether_dredge
execute if entity @s[tag=ec._ember] in minecraft:the_nether if score #rod_roll adv.temp matches 1..15 run tellraw @s [{text:"Nether Dredge! ",color:"gold"},{text:"The lava yields its treasures.",color:"gray",italic:true}]
execute if entity @s[tag=ec._ember] in minecraft:the_nether if score #rod_roll adv.temp matches 1..15 run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 0.5 0.8
# Searing Line: auto-cook caught fish
execute if entity @s[tag=ec._ember] run function evercraft:fishing/ref/searing_line
tag @s remove ec._ember

# Fishing multi-catch proc (Advantage Tree)
execute if score @s adv.fishing matches 1.. run function evercraft:advantage/fishing/multi_catch

# Warn if a crate was actually dropped (only when loot table rolled a crate, not on empty rolls)
execute if score #any_dropped ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your fishing crate was dropped at your feet.",color:"yellow"}]
execute if score #any_dropped ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
