# Classes — Enter Class Inner (Macro)
# Macro arg: class_id (1-13)
# Run as the player, at player, facing the anchor

# Store selected class
$scoreboard players set @s adv.gui_cls_id $(class_id)

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill class list content
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.ClsPage1,distance=..5]

# Move to page 2
scoreboard players set @s adv.gui_page 2

# Spawn "< Back to Classes" sub-nav button
function evercraft:codex/hub/classes/spawn_back_to_classes

# Spawn artifact list based on class (some classes share artifact sets)
# 4=Striker, 5=Sentinel → both use striker artifacts
# 8=Javelin, 9=Hoplite → both use javelin artifacts
# 12=Tank, 13=Knight → both use tank artifacts
execute if score @s adv.gui_cls_id matches 1 run function evercraft:codex/hub/classes/artifacts/rogue
execute if score @s adv.gui_cls_id matches 2 run function evercraft:codex/hub/classes/artifacts/berserker
execute if score @s adv.gui_cls_id matches 3 run function evercraft:codex/hub/classes/artifacts/dancer
execute if score @s adv.gui_cls_id matches 4..5 run function evercraft:codex/hub/classes/artifacts/striker
execute if score @s adv.gui_cls_id matches 6 run function evercraft:codex/hub/classes/artifacts/healer
execute if score @s adv.gui_cls_id matches 7 run function evercraft:codex/hub/classes/artifacts/beastlord
execute if score @s adv.gui_cls_id matches 8..9 run function evercraft:codex/hub/classes/artifacts/javelin
execute if score @s adv.gui_cls_id matches 10 run function evercraft:codex/hub/classes/artifacts/archer
execute if score @s adv.gui_cls_id matches 11 run function evercraft:codex/hub/classes/artifacts/hunter
execute if score @s adv.gui_cls_id matches 12..13 run function evercraft:codex/hub/classes/artifacts/tank

# Store artifact ID/tier arrays for Wishing Star / Lucid Claim selection
execute if score @s adv.gui_cls_id matches 1 run data modify storage evercraft:codex_gui cls_art_slots set value ["vex_iron_sword","hellenic_sword","soulreaper_scythe","coral_blade","glacial_edge","heartstealer","voidbane","soulflame","the_beginning_and_the_end","xara_sword","ender_dragon_sword","zantetsuken"]
execute if score @s adv.gui_cls_id matches 1 run data modify storage evercraft:codex_gui cls_art_tiers set value ["common","common","uncommon","uncommon","rare","rare","ornate","ornate","exquisite","exquisite","mythical","mythical"]
execute if score @s adv.gui_cls_id matches 2 run data modify storage evercraft:codex_gui cls_art_slots set value ["highland_axe","double_axe","fantasy_axe","anchor","morning_star","axeblade","leviathan_axe","starfall_axe","whirlwind","axe_of_honor","kratos_axe"]
execute if score @s adv.gui_cls_id matches 2 run data modify storage evercraft:codex_gui cls_art_tiers set value ["common","uncommon","uncommon","uncommon","uncommon","rare","exquisite","exquisite","exquisite","mythical","mythical"]
execute if score @s adv.gui_cls_id matches 3 run data modify storage evercraft:codex_gui cls_art_slots set value ["mauler","dust_storm","plate_knuckle","golden_gauntlet","order_of_the_stone_gauntlet","prismarine_gauntlet","red_gauntlet"]
execute if score @s adv.gui_cls_id matches 3 run data modify storage evercraft:codex_gui cls_art_tiers set value ["common","uncommon","rare","ornate","exquisite","mythical","mythical"]
execute if score @s adv.gui_cls_id matches 4..5 run data modify storage evercraft:codex_gui cls_art_slots set value ["highland_mace","plunger","frying_pan","combat_mace","earthshaker","mjolnir","blastbreaker_mace","ban_hammer","dragonheart_mace","mace_of_legends","stormlander","romeo_hammer","xara_hammer","infernal_sword"]
execute if score @s adv.gui_cls_id matches 4..5 run data modify storage evercraft:codex_gui cls_art_tiers set value ["common","common","uncommon","rare","rare","rare","ornate","exquisite","exquisite","exquisite","exquisite","mythical","mythical","mythical"]
execute if score @s adv.gui_cls_id matches 6 run data modify storage evercraft:codex_gui cls_art_slots set value ["healer_bandages","healer_poultice","healer_salts","healer_balm","healer_chalice","healer_incense","healer_plume","healer_censer","healer_lotus","healer_tome","healer_ambrosia","healer_tears"]
execute if score @s adv.gui_cls_id matches 6 run data modify storage evercraft:codex_gui cls_art_tiers set value ["common","common","uncommon","uncommon","rare","rare","ornate","ornate","exquisite","exquisite","mythical","mythical"]
execute if score @s adv.gui_cls_id matches 7 run data modify storage evercraft:codex_gui cls_art_slots set value ["boneclub","lance","battlestaff","bone_cudgel","glaive","infinity_lance","gungnir_spear","longinus","dragonmaster_lance"]
execute if score @s adv.gui_cls_id matches 7 run data modify storage evercraft:codex_gui cls_art_tiers set value ["common","uncommon","rare","rare","ornate","exquisite","exquisite","mythical","mythical"]
execute if score @s adv.gui_cls_id matches 8..9 run data modify storage evercraft:codex_gui cls_art_slots set value ["norroen_trident","ancient_trident","royal_trident","fantasy_trident","shuriken_of_ice","crucible_trident","mjolnir","ninja_trident","master_bolt"]
execute if score @s adv.gui_cls_id matches 8..9 run data modify storage evercraft:codex_gui cls_art_tiers set value ["uncommon","rare","rare","ornate","ornate","exquisite","exquisite","mythical","mythical"]
execute if score @s adv.gui_cls_id matches 10 run data modify storage evercraft:codex_gui cls_art_slots set value ["hunting_bow","mechanical_shortbow","battle_bow","longbow","frostbite_bow","stormcaller_bow","ancient_bow","arm_cannon","sabrewing","call_of_the_void","hunters_promise","gaster_blaster"]
execute if score @s adv.gui_cls_id matches 10 run data modify storage evercraft:codex_gui cls_art_tiers set value ["common","common","uncommon","uncommon","rare","rare","ornate","ornate","exquisite","exquisite","mythical","mythical"]
execute if score @s adv.gui_cls_id matches 11 run data modify storage evercraft:codex_gui cls_art_slots set value ["windrunner","air_strike","acacia_ballista","venomfang_crossbow","echo_shot","awper_hand"]
execute if score @s adv.gui_cls_id matches 11 run data modify storage evercraft:codex_gui cls_art_tiers set value ["common","uncommon","rare","ornate","exquisite","mythical"]
execute if score @s adv.gui_cls_id matches 12..13 run data modify storage evercraft:codex_gui cls_art_slots set value ["deku_shield","tower_shield","dragonslayer_shield","dragonmaster_shield","golden_goliath_shield","command_block_shield","drowned_king_shield","trial_shield","ocean_tower_shield"]
execute if score @s adv.gui_cls_id matches 12..13 run data modify storage evercraft:codex_gui cls_art_tiers set value ["common","rare","exquisite","mythical","mythical","mythical","rare","common","rare"]

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
