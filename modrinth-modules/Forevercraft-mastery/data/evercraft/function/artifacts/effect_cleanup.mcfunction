# Artifact Effect Cleanup — Clear lingering potion effects when no artifact source remains
# Called from accessories/player_tick (1s) and sets/check_tick_player (2s)
# Only handles effects with >5s durations (night_vision, fire_resistance, water_breathing)
# Effects with ≤5s durations self-expire fast enough to not feel "stuck"
# Uses ec._clr tag with short-circuit: first source found skips remaining checks

# === Night Vision (13-15s from accessories/armor, 13s from rings) ===
tag @s add ec._clr
# Accessories
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"glowstone_pendant"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"glowstone_pendant"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"miners_lantern"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"miners_lantern"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"seers_compass"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"seers_compass"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"spelunkers_echo"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"spelunkers_echo"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"enchanted_monocle"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"enchanted_monocle"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"wardens_echo"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"wardens_echo"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"claudes_eye"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"claudes_eye"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"warden_totem"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"warden_totem"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"heart_of_the_void"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"heart_of_the_void"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"prism_of_light"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"prism_of_light"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"void_sovereigns_eye"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"void_sovereigns_eye"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"architects_design"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"architects_design"}] run tag @s remove ec._clr
# Rings
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"ring_amethyst"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"ring_amethyst"}] run tag @s remove ec._clr
# Armor
execute if entity @s[tag=ec._clr] if items entity @s armor.head *[custom_data~{artifact:"dragonmaster_helmet"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s armor.head *[custom_data~{artifact:"ender_dragon_helmet"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s armor.head *[custom_data~{artifact:"journey_helmet"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s armor.head *[custom_data~{artifact:"spelunker_helmet"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s armor.head *[custom_data~{ability:"warden_affinity"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s armor.head *[custom_data~{ability:"shadow_veil"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] run effect clear @s night_vision
tag @s remove ec._clr

# === Fire Resistance (15s from accessories, 13s from armor) ===
tag @s add ec._clr
# Accessories
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"phoenix_feather"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"phoenix_feather"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"blaze_core"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"blaze_core"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"ender_dragon_scale"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"ender_dragon_scale"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"infernal_heart"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"infernal_heart"}] run tag @s remove ec._clr
# Rings
execute if entity @s[tag=ec._clr] if items entity @s container.* *[custom_data~{artifact:"ring_void"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] if items entity @s weapon.offhand *[custom_data~{artifact:"ring_void"}] run tag @s remove ec._clr
# Armor
execute if entity @s[tag=ec._clr] if items entity @s armor.head *[custom_data~{artifact:"infernal_helmet"}] run tag @s remove ec._clr
execute if entity @s[tag=ec._clr] run effect clear @s fire_resistance
tag @s remove ec._clr

# === Water Breathing (15s from accessories) ===
execute unless items entity @s container.* *[custom_data~{artifact:"sea_heart_relic"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"sea_heart_relic"}] unless items entity @s container.* *[custom_data~{artifact:"abyssal_pearl"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"abyssal_pearl"}] unless items entity @s container.* *[custom_data~{artifact:"ring_lapis"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"ring_lapis"}] run effect clear @s water_breathing
