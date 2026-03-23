# Harmonize — Per-player tick (runs as @s = player, at @s)
# OPT: Consolidates 3 @a scans into 1 function call

# OPT: Early exit for players with no harmonizable equipment
# Checks: no accessories/rings/boss-exclusives, no trim armor, no artifact armor/weapon,
# no Netherite Core, no satchels, and previous cycle levels were all 0
execute unless entity @s[tag=ec.has_accessory] unless entity @s[tag=ec.has_any_trim] unless items entity @s armor.* *[custom_data~{is_artifact:true}] unless items entity @s weapon.mainhand *[custom_data~{is_artifact:true}] unless items entity @s enderchest.* *[custom_data~{ancient_netherite_core:1b}] unless score @s ec.satchel_id matches 1.. unless score @s ec.hsatch_id matches 1.. if score @s ec.h_str matches 0 if score @s ec.h_speed matches 0 if score @s ec.h_haste matches 0 if score @s ec.h_resist matches 0 if score @s ec.h_jump matches 0 if score @s ec.h_regen matches 0 run return 0

function evercraft:harmonize/count_all

# Harmonize + Cooking: Well-fed (Saturation effect) counts as +1 Regen harmony source
execute if entity @s[nbt={active_effects:[{id:"minecraft:saturation"}]}] run scoreboard players add @s ec.h_reg_1 1

function evercraft:harmonize/compound
function evercraft:harmonize/apply
