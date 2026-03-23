advancement revoke @s through evercraft:trim/root
scoreboard players reset @s trim_deaths
schedule clear evercraft:trim/single/dune/saturation
schedule clear evercraft:trim/single/silence/inflict_warden_power

# clean up custom items
clear @s *[custom_data~{trim_abilities_custom_item:1b}]

# Clear all trim effects
execute if entity @s[tag=single_vex] run effect clear @s jump_boost
execute if entity @s[tag=single_vex] run effect clear @s slow_falling
execute if entity @s[tag=single_coast] run effect clear @s dolphins_grace
execute if entity @s[tag=full_set_coast] run effect clear @s dolphins_grace
execute if entity @s[tag=full_set_coast] run effect clear @s luck
execute if entity @s[tag=full_set_ward] run effect clear @s resistance
execute if entity @s[tag=single_host] run effect clear @s hero_of_the_village
execute if entity @s[tag=single_tide] run effect clear @s water_breathing
execute if entity @s[tag=full_set_tide] run effect clear @s water_breathing
execute if entity @s[tag=full_set_tide] run effect clear @s dolphins_grace
execute if entity @s[tag=full_set_tide] run effect clear @s conduit_power
execute if entity @s[tag=single_rib] run effect clear @s fire_resistance
execute if entity @s[tag=full_set_rib] run effect clear @s fire_resistance
execute if entity @s[tag=single_flow] run effect clear @s speed
execute if entity @s[tag=full_set_flow] run effect clear @s speed
execute if entity @s[tag=single_eye] run effect clear @s strength
execute if entity @s[tag=single_eye] run effect clear @s night_vision
execute if entity @s[tag=full_set_eye] run effect clear @s night_vision
execute if entity @s[tag=single_wild] run effect clear @s speed
execute if entity @s[tag=single_wild] run effect clear @s strength
execute if entity @s[tag=full_set_wild] run effect clear @s haste
execute if entity @s[tag=full_set_wild] at @s run kill @e[type=wolf,tag=wild_guardian,distance=..128]
execute if entity @s[tag=full_set_snout] run effect clear @s fire_resistance
execute if entity @s[tag=single_shaper] run kill @n[tag=trim_block_id_shaper]
execute if entity @s[tag=full_set_flow] run ride @s dismount
execute if entity @s[tag=full_set_wild] run attribute @s minecraft:step_height base set 0.6
execute if entity @s[tag=full_set_wild] run attribute @s minecraft:gravity base set 0.08
execute if entity @s[tag=full_set_wild] run attribute @s minecraft:safe_fall_distance base set 3
execute if entity @s[tag=full_set_dune] run attribute @s minecraft:step_height base set 0.6
scoreboard players reset @s get_bundle
scoreboard players reset @s find_way
scoreboard players reset @s panda_genes

# tag clean up
tag @s remove trim_snout
tag @s remove full_set_coast
tag @s remove single_coast
tag @s remove full_set_dune
tag @s remove single_dune
tag @s remove full_set_eye
tag @s remove single_eye
tag @s remove full_set_rib
tag @s remove single_rib
tag @s remove full_set_sentry
tag @s remove single_sentry
tag @s remove full_set_silence
tag @s remove single_silence
tag @s remove full_set_snout
tag @s remove single_snout
tag @s remove full_set_spire
tag @s remove single_spire
tag @s remove full_set_vex
tag @s remove single_vex
tag @s remove full_set_ward
tag @s remove single_ward
tag @s remove full_set_tide
tag @s remove single_tide
tag @s remove full_set_wild
tag @s remove single_wild
tag @s remove full_set_ascendant
tag @s remove single_wayfinder
tag @s remove single_shaper
tag @s remove single_host
tag @s remove single_raiser
tag @s remove single_flow
tag @s remove full_set_flow
tag @s remove single_bolt
tag @s remove full_set_bolt

# Check if wearing any armor at all
execute unless items entity @s armor.* * run return 0

# mark trimmed armor
execute if items entity @s armor.head *[minecraft:trim] run item modify entity @s armor.head evercraft:trim/trim_abilities_tag
execute if items entity @s armor.chest *[minecraft:trim] run item modify entity @s armor.chest evercraft:trim/trim_abilities_tag
execute if items entity @s armor.legs *[minecraft:trim] run item modify entity @s armor.legs evercraft:trim/trim_abilities_tag
execute if items entity @s armor.feet *[minecraft:trim] run item modify entity @s armor.feet evercraft:trim/trim_abilities_tag

# full set check - all 4 pieces have trim
execute if items entity @s armor.head *[minecraft:trim] if items entity @s armor.chest *[minecraft:trim] if items entity @s armor.legs *[minecraft:trim] if items entity @s armor.feet *[minecraft:trim] run return run function evercraft:trim/update/u_t_a_full_armor

# single pieces - get pattern from each slot using 1.21+ equipment path
data modify storage evercraft:trim.player_armor boots set string entity @s equipment.feet.components."minecraft:trim".pattern 10
data modify storage evercraft:trim.player_armor leggings set string entity @s equipment.legs.components."minecraft:trim".pattern 10
data modify storage evercraft:trim.player_armor chestplate set string entity @s equipment.chest.components."minecraft:trim".pattern 10
data modify storage evercraft:trim.player_armor helmet set string entity @s equipment.head.components."minecraft:trim".pattern 10

execute if items entity @s armor.feet *[minecraft:trim] run function evercraft:trim/update/u_t_a_boots with storage evercraft:trim.player_armor
execute if items entity @s armor.legs *[minecraft:trim] run function evercraft:trim/update/u_t_a_leggings with storage evercraft:trim.player_armor
execute if items entity @s armor.chest *[minecraft:trim] run function evercraft:trim/update/u_t_a_chestplate with storage evercraft:trim.player_armor
execute if items entity @s armor.head *[minecraft:trim] run function evercraft:trim/update/u_t_a_helmet with storage evercraft:trim.player_armor
