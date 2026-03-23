tag @s add full_set_eye
# Eye Trim - Full Set: Night Vision + Teleport Spyglass + Hostile Detection
# The Eye sees through all barriers
effect give @s night_vision infinite 0 false
execute unless items entity @s container.* spyglass[custom_data~{trim_abilities_eye_teleport:1b}] unless items entity @s weapon.* spyglass[custom_data~{trim_abilities_eye_teleport:1b}] run give @s spyglass[custom_name={text:"Eye of Ender",italic:false},enchantment_glint_override=true,custom_data={trim_abilities_eye_teleport:1b,trim_abilities_custom_item:1b}]
