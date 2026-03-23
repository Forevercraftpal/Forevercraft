# Accessory Cleanup - Remove attribute modifiers from items player no longer has
# Called from tick function for all players
# Check both container.* (hotbar+inventory) AND weapon.offhand (offhand slot)

# Remove Healer's Salve bonus if not in inventory or offhand
execute unless items entity @s container.* *[custom_data~{artifact:"healers_salve"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"healers_salve"}] run attribute @s max_health modifier remove evercraft:healers_salve

# === Remove artifact passive Dream Rate modifiers when artifact leaves inventory ===
execute unless items entity @s container.* *[custom_data~{artifact:"pebble_of_dreams"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"pebble_of_dreams"}] run attribute @s luck modifier remove evercraft:pebble_of_dreams_luck
execute unless items entity @s container.* *[custom_data~{artifact:"diamond_ring"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"diamond_ring"}] run attribute @s luck modifier remove evercraft:diamond_ring_luck
execute unless items entity @s container.* *[custom_data~{artifact:"ruin_watch"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"ruin_watch"}] run attribute @s luck modifier remove evercraft:ruin_watch_luck
execute unless items entity @s container.* *[custom_data~{artifact:"miners_lantern"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"miners_lantern"}] run attribute @s luck modifier remove evercraft:miners_lantern_luck
execute unless items entity @s container.* *[custom_data~{artifact:"merchants_coin"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"merchants_coin"}] run attribute @s luck modifier remove evercraft:merchants_coin_luck
execute unless items entity @s container.* *[custom_data~{artifact:"anglers_pearl"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"anglers_pearl"}] run attribute @s luck modifier remove evercraft:anglers_pearl_luck
execute unless items entity @s container.* *[custom_data~{artifact:"enchanted_monocle"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"enchanted_monocle"}] run attribute @s luck modifier remove evercraft:enchanted_monocle_luck
execute unless items entity @s container.* *[custom_data~{artifact:"ring_of_undying"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"ring_of_undying"}] run attribute @s luck modifier remove evercraft:ring_of_undying_luck
execute unless items entity @s container.* *[custom_data~{artifact:"claudes_eye"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"claudes_eye"}] run attribute @s luck modifier remove evercraft:claudes_eye_luck
execute unless items entity @s container.* *[custom_data~{artifact:"sculk_heart"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"sculk_heart"}] run attribute @s luck modifier remove evercraft:sculk_heart_luck
execute unless items entity @s container.* *[custom_data~{artifact:"ring_trial"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"ring_trial"}] run attribute @s luck modifier remove evercraft:trial_ring_luck
execute unless items entity @s container.* *[custom_data~{artifact:"codex_of_everything"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"codex_of_everything"}] run attribute @s luck modifier remove evercraft:codex_of_everything_luck
execute unless items entity @s container.* *[custom_data~{artifact:"beacon_of_ancients"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"beacon_of_ancients"}] run attribute @s luck modifier remove evercraft:beacon_of_ancients_luck
execute unless items entity @s container.* *[custom_data~{artifact:"netherite_nexus"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"netherite_nexus"}] run attribute @s luck modifier remove evercraft:netherite_nexus_luck
execute unless items entity @s container.* *[custom_data~{artifact:"claudes_gift"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"claudes_gift"}] run attribute @s luck modifier remove evercraft:claudes_gift_luck

# === Boss Exclusive artifact cleanup ===
execute unless items entity @s container.* *[custom_data~{artifact:"soul_reaver"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"soul_reaver"}] run attribute @s luck modifier remove evercraft:soul_reaver_luck
execute unless items entity @s container.* *[custom_data~{artifact:"thornheart_bloom"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"thornheart_bloom"}] run attribute @s luck modifier remove evercraft:thornheart_bloom_luck
execute unless items entity @s container.* *[custom_data~{artifact:"thunderstrike_core"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"thunderstrike_core"}] run attribute @s luck modifier remove evercraft:thunderstrike_core_luck
execute unless items entity @s container.* *[custom_data~{artifact:"abyssal_pearl"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"abyssal_pearl"}] run attribute @s luck modifier remove evercraft:abyssal_pearl_luck
execute unless items entity @s container.* *[custom_data~{artifact:"earthshaker_core"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"earthshaker_core"}] run attribute @s luck modifier remove evercraft:earthshaker_core_luck
execute unless items entity @s container.* *[custom_data~{artifact:"earthshaker_core"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"earthshaker_core"}] run attribute @s knockback_resistance modifier remove evercraft:earthshaker_core_kb
execute unless items entity @s container.* *[custom_data~{artifact:"nightmare_fragment"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"nightmare_fragment"}] run attribute @s luck modifier remove evercraft:nightmare_fragment_luck
execute unless items entity @s container.* *[custom_data~{artifact:"infernal_heart"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"infernal_heart"}] run attribute @s luck modifier remove evercraft:infernal_heart_luck
execute unless items entity @s container.* *[custom_data~{artifact:"soulkeepers_ember"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"soulkeepers_ember"}] run attribute @s luck modifier remove evercraft:soulkeepers_ember_luck
execute unless items entity @s container.* *[custom_data~{artifact:"behemoths_heart"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"behemoths_heart"}] run attribute @s luck modifier remove evercraft:behemoths_heart_luck
execute unless items entity @s container.* *[custom_data~{artifact:"void_sovereigns_eye"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"void_sovereigns_eye"}] run attribute @s luck modifier remove evercraft:void_sovereigns_eye_luck
execute unless items entity @s container.* *[custom_data~{artifact:"architects_design"}] unless items entity @s weapon.offhand *[custom_data~{artifact:"architects_design"}] run attribute @s luck modifier remove evercraft:architects_design_luck

# === Clear lingering potion effects (night_vision, fire_resistance, water_breathing) ===
function evercraft:artifacts/effect_cleanup
