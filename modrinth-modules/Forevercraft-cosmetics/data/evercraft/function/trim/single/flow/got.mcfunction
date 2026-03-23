tag @s add single_flow

execute if items entity @s armor.head *[minecraft:trim~{pattern:"minecraft:flow"}] run item modify entity @s armor.head [{"function":"minecraft:set_attributes","replace":false,"modifiers":[{"id":"evercraft:trim/safe_fall_distance","attribute":"minecraft:safe_fall_distance","amount":3,"operation":"add_value","slot":"head"}]},{"function":"minecraft:set_custom_data","tag":"{single_flow:{head:1b}}"}]
execute if items entity @s armor.chest *[minecraft:trim~{pattern:"minecraft:flow"}] run item modify entity @s armor.chest [{"function":"minecraft:set_attributes","replace":false,"modifiers":[{"id":"evercraft:trim/safe_fall_distance","attribute":"minecraft:safe_fall_distance","amount":3,"operation":"add_value","slot":"chest"}]},{"function":"minecraft:set_custom_data","tag":"{single_flow:{chest:1b}}"}]
execute if items entity @s armor.legs *[minecraft:trim~{pattern:"minecraft:flow"}] run item modify entity @s armor.legs [{"function":"minecraft:set_attributes","replace":false,"modifiers":[{"id":"evercraft:trim/safe_fall_distance","attribute":"minecraft:safe_fall_distance","amount":3,"operation":"add_value","slot":"legs"}]},{"function":"minecraft:set_custom_data","tag":"{single_flow:{legs:1b}}"}]
execute if items entity @s armor.feet *[minecraft:trim~{pattern:"minecraft:flow"}] run item modify entity @s armor.feet [{"function":"minecraft:set_attributes","replace":false,"modifiers":[{"id":"evercraft:trim/safe_fall_distance","attribute":"minecraft:safe_fall_distance","amount":3,"operation":"add_value","slot":"feet"}]},{"function":"minecraft:set_custom_data","tag":"{single_flow:{feet:1b}}"}]

# Speed 1 for any single piece (infinite duration like ward)
effect give @s speed infinite 0 false
