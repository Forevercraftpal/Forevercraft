# === GET TOP AFFINITY CLASS ===
# Run as player. Finds their highest affinity class.
# Stores results in evercraft:showcase temp:
#   aff_class = class name, aff_stage = stage name, aff_color = stage color

scoreboard players set #aff_max ec.temp 0
scoreboard players set #aff_max_class ec.temp 0

# Compare all 14 classes — strict > updates max, >= sets class (ties go to later class)
execute if score @s ec.aff_rg > #aff_max ec.temp run scoreboard players operation #aff_max ec.temp = @s ec.aff_rg
execute if score @s ec.aff_rg >= #aff_max ec.temp if score #aff_max ec.temp matches 1.. run scoreboard players set #aff_max_class ec.temp 1
execute if score @s ec.aff_bk > #aff_max ec.temp run scoreboard players operation #aff_max ec.temp = @s ec.aff_bk
execute if score @s ec.aff_bk >= #aff_max ec.temp if score #aff_max ec.temp matches 1.. run scoreboard players set #aff_max_class ec.temp 2
execute if score @s ec.aff_dn > #aff_max ec.temp run scoreboard players operation #aff_max ec.temp = @s ec.aff_dn
execute if score @s ec.aff_dn >= #aff_max ec.temp if score #aff_max ec.temp matches 1.. run scoreboard players set #aff_max_class ec.temp 3
execute if score @s ec.aff_sk > #aff_max ec.temp run scoreboard players operation #aff_max ec.temp = @s ec.aff_sk
execute if score @s ec.aff_sk >= #aff_max ec.temp if score #aff_max ec.temp matches 1.. run scoreboard players set #aff_max_class ec.temp 4
execute if score @s ec.aff_kt > #aff_max ec.temp run scoreboard players operation #aff_max ec.temp = @s ec.aff_kt
execute if score @s ec.aff_kt >= #aff_max ec.temp if score #aff_max ec.temp matches 1.. run scoreboard players set #aff_max_class ec.temp 5
execute if score @s ec.aff_hl > #aff_max ec.temp run scoreboard players operation #aff_max ec.temp = @s ec.aff_hl
execute if score @s ec.aff_hl >= #aff_max ec.temp if score #aff_max ec.temp matches 1.. run scoreboard players set #aff_max_class ec.temp 6
execute if score @s ec.aff_bl > #aff_max ec.temp run scoreboard players operation #aff_max ec.temp = @s ec.aff_bl
execute if score @s ec.aff_bl >= #aff_max ec.temp if score #aff_max ec.temp matches 1.. run scoreboard players set #aff_max_class ec.temp 7
execute if score @s ec.aff_jv > #aff_max ec.temp run scoreboard players operation #aff_max ec.temp = @s ec.aff_jv
execute if score @s ec.aff_jv >= #aff_max ec.temp if score #aff_max ec.temp matches 1.. run scoreboard players set #aff_max_class ec.temp 8
execute if score @s ec.aff_hp > #aff_max ec.temp run scoreboard players operation #aff_max ec.temp = @s ec.aff_hp
execute if score @s ec.aff_hp >= #aff_max ec.temp if score #aff_max ec.temp matches 1.. run scoreboard players set #aff_max_class ec.temp 9
execute if score @s ec.aff_ar > #aff_max ec.temp run scoreboard players operation #aff_max ec.temp = @s ec.aff_ar
execute if score @s ec.aff_ar >= #aff_max ec.temp if score #aff_max ec.temp matches 1.. run scoreboard players set #aff_max_class ec.temp 10
execute if score @s ec.aff_ht > #aff_max ec.temp run scoreboard players operation #aff_max ec.temp = @s ec.aff_ht
execute if score @s ec.aff_ht >= #aff_max ec.temp if score #aff_max ec.temp matches 1.. run scoreboard players set #aff_max_class ec.temp 11
execute if score @s ec.aff_tk > #aff_max ec.temp run scoreboard players operation #aff_max ec.temp = @s ec.aff_tk
execute if score @s ec.aff_tk >= #aff_max ec.temp if score #aff_max ec.temp matches 1.. run scoreboard players set #aff_max_class ec.temp 12
execute if score @s ec.aff_kn > #aff_max ec.temp run scoreboard players operation #aff_max ec.temp = @s ec.aff_kn
execute if score @s ec.aff_kn >= #aff_max ec.temp if score #aff_max ec.temp matches 1.. run scoreboard players set #aff_max_class ec.temp 13
execute if score @s ec.aff_ds > #aff_max ec.temp run scoreboard players operation #aff_max ec.temp = @s ec.aff_ds
execute if score @s ec.aff_ds >= #aff_max ec.temp if score #aff_max ec.temp matches 1.. run scoreboard players set #aff_max_class ec.temp 14

# Map class ID to name
data modify storage evercraft:showcase temp.aff_class set value "None"
execute if score #aff_max_class ec.temp matches 1 run data modify storage evercraft:showcase temp.aff_class set value "Rogue"
execute if score #aff_max_class ec.temp matches 2 run data modify storage evercraft:showcase temp.aff_class set value "Berserker"
execute if score #aff_max_class ec.temp matches 3 run data modify storage evercraft:showcase temp.aff_class set value "Dancer"
execute if score #aff_max_class ec.temp matches 4 run data modify storage evercraft:showcase temp.aff_class set value "Striker"
execute if score #aff_max_class ec.temp matches 5 run data modify storage evercraft:showcase temp.aff_class set value "Sentinel"
execute if score #aff_max_class ec.temp matches 6 run data modify storage evercraft:showcase temp.aff_class set value "Healer"
execute if score #aff_max_class ec.temp matches 7 run data modify storage evercraft:showcase temp.aff_class set value "Beastlord"
execute if score #aff_max_class ec.temp matches 8 run data modify storage evercraft:showcase temp.aff_class set value "Javelin"
execute if score #aff_max_class ec.temp matches 9 run data modify storage evercraft:showcase temp.aff_class set value "Hoplite"
execute if score #aff_max_class ec.temp matches 10 run data modify storage evercraft:showcase temp.aff_class set value "Archer"
execute if score #aff_max_class ec.temp matches 11 run data modify storage evercraft:showcase temp.aff_class set value "Hunter"
execute if score #aff_max_class ec.temp matches 12 run data modify storage evercraft:showcase temp.aff_class set value "Tank"
execute if score #aff_max_class ec.temp matches 13 run data modify storage evercraft:showcase temp.aff_class set value "Knight"
execute if score #aff_max_class ec.temp matches 14 run data modify storage evercraft:showcase temp.aff_class set value "Dual Swordsman"

# Get stage for winning class
scoreboard players set #aff_top_stage ec.temp 0
execute if score #aff_max_class ec.temp matches 1 run scoreboard players operation #aff_top_stage ec.temp = @s ec.affs_rg
execute if score #aff_max_class ec.temp matches 2 run scoreboard players operation #aff_top_stage ec.temp = @s ec.affs_bk
execute if score #aff_max_class ec.temp matches 3 run scoreboard players operation #aff_top_stage ec.temp = @s ec.affs_dn
execute if score #aff_max_class ec.temp matches 4 run scoreboard players operation #aff_top_stage ec.temp = @s ec.affs_sk
execute if score #aff_max_class ec.temp matches 5 run scoreboard players operation #aff_top_stage ec.temp = @s ec.affs_kt
execute if score #aff_max_class ec.temp matches 6 run scoreboard players operation #aff_top_stage ec.temp = @s ec.affs_hl
execute if score #aff_max_class ec.temp matches 7 run scoreboard players operation #aff_top_stage ec.temp = @s ec.affs_bl
execute if score #aff_max_class ec.temp matches 8 run scoreboard players operation #aff_top_stage ec.temp = @s ec.affs_jv
execute if score #aff_max_class ec.temp matches 9 run scoreboard players operation #aff_top_stage ec.temp = @s ec.affs_hp
execute if score #aff_max_class ec.temp matches 10 run scoreboard players operation #aff_top_stage ec.temp = @s ec.affs_ar
execute if score #aff_max_class ec.temp matches 11 run scoreboard players operation #aff_top_stage ec.temp = @s ec.affs_ht
execute if score #aff_max_class ec.temp matches 12 run scoreboard players operation #aff_top_stage ec.temp = @s ec.affs_tk
execute if score #aff_max_class ec.temp matches 13 run scoreboard players operation #aff_top_stage ec.temp = @s ec.affs_kn
execute if score #aff_max_class ec.temp matches 14 run scoreboard players operation #aff_top_stage ec.temp = @s ec.affs_ds

# Map stage to name + color
data modify storage evercraft:showcase temp.aff_stage set value "—"
data modify storage evercraft:showcase temp.aff_color set value "dark_gray"
execute if score #aff_top_stage ec.temp matches 1 run data modify storage evercraft:showcase temp.aff_stage set value "Common"
execute if score #aff_top_stage ec.temp matches 1 run data modify storage evercraft:showcase temp.aff_color set value "white"
execute if score #aff_top_stage ec.temp matches 2 run data modify storage evercraft:showcase temp.aff_stage set value "Uncommon"
execute if score #aff_top_stage ec.temp matches 2 run data modify storage evercraft:showcase temp.aff_color set value "blue"
execute if score #aff_top_stage ec.temp matches 3 run data modify storage evercraft:showcase temp.aff_stage set value "Rare"
execute if score #aff_top_stage ec.temp matches 3 run data modify storage evercraft:showcase temp.aff_color set value "aqua"
execute if score #aff_top_stage ec.temp matches 4 run data modify storage evercraft:showcase temp.aff_stage set value "Ornate"
execute if score #aff_top_stage ec.temp matches 4 run data modify storage evercraft:showcase temp.aff_color set value "dark_purple"
execute if score #aff_top_stage ec.temp matches 5 run data modify storage evercraft:showcase temp.aff_stage set value "Exquisite"
execute if score #aff_top_stage ec.temp matches 5 run data modify storage evercraft:showcase temp.aff_color set value "light_purple"
execute if score #aff_top_stage ec.temp matches 6 run data modify storage evercraft:showcase temp.aff_stage set value "Mythical"
execute if score #aff_top_stage ec.temp matches 6 run data modify storage evercraft:showcase temp.aff_color set value "gold"
execute if score #aff_top_stage ec.temp matches 7 run data modify storage evercraft:showcase temp.aff_stage set value "Spirit"
execute if score #aff_top_stage ec.temp matches 7 run data modify storage evercraft:showcase temp.aff_color set value "yellow"

# Store raw XP value for display
execute store result storage evercraft:showcase temp.aff_xp int 1 run scoreboard players get #aff_max ec.temp
