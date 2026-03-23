# Check what artifact sets the player is wearing
# Run as player at player

# OPT: Early exit if player has no artifact armor at all (skip 586 lines)
# Check each slot for custom_data component (heuristic: artifact armor always has custom_data)
execute unless items entity @s armor.head *[custom_data] unless items entity @s armor.chest *[custom_data] unless items entity @s armor.legs *[custom_data] unless items entity @s armor.feet *[custom_data] run return run function evercraft:artifacts/sets/clear_all_tags

# ============================================
# RESET ALL SET PIECE COUNTS
# ============================================
scoreboard players set @s ec.dragonmaster 0
scoreboard players set @s ec.titan 0
scoreboard players set @s ec.verdant 0
scoreboard players set @s ec.ember 0
scoreboard players set @s ec.ninja 0
scoreboard players set @s ec.cloaked_skull 0
scoreboard players set @s ec.space 0
scoreboard players set @s ec.dragonslayer 0
scoreboard players set @s ec.netherwalker 0
scoreboard players set @s ec.frost 0
scoreboard players set @s ec.wither 0
scoreboard players set @s ec.phantom 0
scoreboard players set @s ec.ocean 0
scoreboard players set @s ec.ender 0
scoreboard players set @s ec.storm 0
scoreboard players set @s ec.nature 0
scoreboard players set @s ec.golem 0
scoreboard players set @s ec.sculk 0
scoreboard players set @s ec.celestial 0
scoreboard players set @s ec.blood 0
scoreboard players set @s ec.shadow 0
scoreboard players set @s ec.crystal 0

scoreboard players set @s ec.journey 0
scoreboard players set @s ec.splendid 0
scoreboard players set @s ec.infernal 0
scoreboard players set @s ec.ender_dragon 0
scoreboard players set @s ec.fireforged 0
scoreboard players set @s ec.hero 0
# ============================================
# DRAGONSLAYER SET
# ============================================
# Count pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"dragonslayer"}] run scoreboard players add @s ec.dragonslayer 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"dragonslayer"}] run scoreboard players add @s ec.dragonslayer 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"dragonslayer"}] run scoreboard players add @s ec.dragonslayer 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"dragonslayer"}] run scoreboard players add @s ec.dragonslayer 1

# Apply bonuses
execute if score @s ec.dragonslayer matches 2.. run function evercraft:artifacts/sets/dragonslayer/bonus_2pc
execute if score @s ec.dragonslayer matches 4 run function evercraft:artifacts/sets/dragonslayer/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.dragonslayer matches 4 if entity @s[tag=dragonslayer_4pc] run function evercraft:artifacts/sets/dragonslayer/remove_4pc
execute unless score @s ec.dragonslayer matches 2.. if entity @s[tag=dragonslayer_2pc] run function evercraft:artifacts/sets/dragonslayer/remove_2pc

# ============================================
# NETHERWALKER SET
# ============================================
# Count armor pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"netherwalker"}] run scoreboard players add @s ec.netherwalker 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"netherwalker"}] run scoreboard players add @s ec.netherwalker 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"netherwalker"}] run scoreboard players add @s ec.netherwalker 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"netherwalker"}] run scoreboard players add @s ec.netherwalker 1
# Count tools in mainhand OR inventory (tools sync to set even when not held)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"netherwalker_pickaxe"}] run scoreboard players add @s ec.netherwalker 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"netherwalker_shovel"}] run scoreboard players add @s ec.netherwalker 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"netherwalker_hoe"}] run scoreboard players add @s ec.netherwalker 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"netherwalker_pickaxe"}] if items entity @s container.* *[custom_data~{artifact:"netherwalker_pickaxe"}] run scoreboard players add @s ec.netherwalker 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"netherwalker_shovel"}] if items entity @s container.* *[custom_data~{artifact:"netherwalker_shovel"}] run scoreboard players add @s ec.netherwalker 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"netherwalker_hoe"}] if items entity @s container.* *[custom_data~{artifact:"netherwalker_hoe"}] run scoreboard players add @s ec.netherwalker 1

# Apply bonuses (require at least 1 armor piece — tools alone don't trigger)
execute if score @s ec.netherwalker matches 2.. if items entity @s armor.* *[custom_data~{artifact_set:"netherwalker"}] run function evercraft:artifacts/sets/netherwalker/bonus_2pc
execute if score @s ec.netherwalker matches 4.. if items entity @s armor.* *[custom_data~{artifact_set:"netherwalker"}] run function evercraft:artifacts/sets/netherwalker/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.netherwalker matches 4.. if entity @s[tag=netherwalker_4pc] run function evercraft:artifacts/sets/netherwalker/remove_4pc
execute unless score @s ec.netherwalker matches 2.. if entity @s[tag=netherwalker_2pc] run function evercraft:artifacts/sets/netherwalker/remove_2pc
# Also remove if no armor worn at all
execute unless items entity @s armor.* *[custom_data~{artifact_set:"netherwalker"}] if entity @s[tag=netherwalker_2pc] run function evercraft:artifacts/sets/netherwalker/remove_2pc
execute unless items entity @s armor.* *[custom_data~{artifact_set:"netherwalker"}] if entity @s[tag=netherwalker_4pc] run function evercraft:artifacts/sets/netherwalker/remove_4pc

# ============================================
# FROST SET
# ============================================
# Count armor pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"frost"}] run scoreboard players add @s ec.frost 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"frost"}] run scoreboard players add @s ec.frost 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"frost"}] run scoreboard players add @s ec.frost 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"frost"}] run scoreboard players add @s ec.frost 1
# Count tools in mainhand OR inventory (tools sync to set even when not held)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"frost_pickaxe"}] run scoreboard players add @s ec.frost 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"frost_shovel"}] run scoreboard players add @s ec.frost 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"frost_hoe"}] run scoreboard players add @s ec.frost 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"frost_pickaxe"}] if items entity @s container.* *[custom_data~{artifact:"frost_pickaxe"}] run scoreboard players add @s ec.frost 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"frost_shovel"}] if items entity @s container.* *[custom_data~{artifact:"frost_shovel"}] run scoreboard players add @s ec.frost 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"frost_hoe"}] if items entity @s container.* *[custom_data~{artifact:"frost_hoe"}] run scoreboard players add @s ec.frost 1

# Apply bonuses (require at least 1 armor piece — tools alone don't trigger)
execute if score @s ec.frost matches 2.. if items entity @s armor.* *[custom_data~{artifact_set:"frost"}] run function evercraft:artifacts/sets/frost/bonus_2pc
execute if score @s ec.frost matches 4.. if items entity @s armor.* *[custom_data~{artifact_set:"frost"}] run function evercraft:artifacts/sets/frost/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.frost matches 4.. if entity @s[tag=frost_4pc] run function evercraft:artifacts/sets/frost/remove_4pc
execute unless score @s ec.frost matches 2.. if entity @s[tag=frost_2pc] run function evercraft:artifacts/sets/frost/remove_2pc
# Also remove if no armor worn at all
execute unless items entity @s armor.* *[custom_data~{artifact_set:"frost"}] if entity @s[tag=frost_2pc] run function evercraft:artifacts/sets/frost/remove_2pc
execute unless items entity @s armor.* *[custom_data~{artifact_set:"frost"}] if entity @s[tag=frost_4pc] run function evercraft:artifacts/sets/frost/remove_4pc

# ============================================
# WITHER SET
# ============================================
# Count pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"wither"}] run scoreboard players add @s ec.wither 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"wither"}] run scoreboard players add @s ec.wither 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"wither"}] run scoreboard players add @s ec.wither 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"wither"}] run scoreboard players add @s ec.wither 1

# Apply bonuses
execute if score @s ec.wither matches 2.. run function evercraft:artifacts/sets/wither/bonus_2pc
execute if score @s ec.wither matches 4 run function evercraft:artifacts/sets/wither/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.wither matches 4 if entity @s[tag=wither_4pc] run function evercraft:artifacts/sets/wither/remove_4pc
execute unless score @s ec.wither matches 2.. if entity @s[tag=wither_2pc] run function evercraft:artifacts/sets/wither/remove_2pc

# ============================================
# PHANTOM SET
# ============================================
# Count pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"phantom"}] run scoreboard players add @s ec.phantom 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"phantom"}] run scoreboard players add @s ec.phantom 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"phantom"}] run scoreboard players add @s ec.phantom 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"phantom"}] run scoreboard players add @s ec.phantom 1

# Apply bonuses
execute if score @s ec.phantom matches 2.. run function evercraft:artifacts/sets/phantom/bonus_2pc
execute if score @s ec.phantom matches 4 run function evercraft:artifacts/sets/phantom/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.phantom matches 4 if entity @s[tag=phantom_4pc] run function evercraft:artifacts/sets/phantom/remove_4pc
execute unless score @s ec.phantom matches 2.. if entity @s[tag=phantom_2pc] run function evercraft:artifacts/sets/phantom/remove_2pc

# ============================================
# OCEAN SET
# ============================================
# Count armor pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"ocean"}] run scoreboard players add @s ec.ocean 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"ocean"}] run scoreboard players add @s ec.ocean 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"ocean"}] run scoreboard players add @s ec.ocean 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"ocean"}] run scoreboard players add @s ec.ocean 1
# Count tools in mainhand OR inventory (tools sync to set even when not held)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"ocean_pickaxe"}] run scoreboard players add @s ec.ocean 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"ocean_shovel"}] run scoreboard players add @s ec.ocean 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"ocean_hoe"}] run scoreboard players add @s ec.ocean 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"ocean_pickaxe"}] if items entity @s container.* *[custom_data~{artifact:"ocean_pickaxe"}] run scoreboard players add @s ec.ocean 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"ocean_shovel"}] if items entity @s container.* *[custom_data~{artifact:"ocean_shovel"}] run scoreboard players add @s ec.ocean 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"ocean_hoe"}] if items entity @s container.* *[custom_data~{artifact:"ocean_hoe"}] run scoreboard players add @s ec.ocean 1

# Apply bonuses (require at least 1 armor piece — tools alone don't trigger)
execute if score @s ec.ocean matches 2.. if items entity @s armor.* *[custom_data~{artifact_set:"ocean"}] run function evercraft:artifacts/sets/ocean/bonus_2pc
execute if score @s ec.ocean matches 4.. if items entity @s armor.* *[custom_data~{artifact_set:"ocean"}] run function evercraft:artifacts/sets/ocean/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.ocean matches 4.. if entity @s[tag=ocean_4pc] run function evercraft:artifacts/sets/ocean/remove_4pc
execute unless score @s ec.ocean matches 2.. if entity @s[tag=ocean_2pc] run function evercraft:artifacts/sets/ocean/remove_2pc
# Also remove if no armor worn at all
execute unless items entity @s armor.* *[custom_data~{artifact_set:"ocean"}] if entity @s[tag=ocean_2pc] run function evercraft:artifacts/sets/ocean/remove_2pc
execute unless items entity @s armor.* *[custom_data~{artifact_set:"ocean"}] if entity @s[tag=ocean_4pc] run function evercraft:artifacts/sets/ocean/remove_4pc

# ============================================
# ENDER SET
# ============================================
# Count pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"ender"}] run scoreboard players add @s ec.ender 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"ender"}] run scoreboard players add @s ec.ender 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"ender"}] run scoreboard players add @s ec.ender 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"ender"}] run scoreboard players add @s ec.ender 1

# Apply bonuses
execute if score @s ec.ender matches 2.. run function evercraft:artifacts/sets/ender/bonus_2pc
execute if score @s ec.ender matches 4 run function evercraft:artifacts/sets/ender/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.ender matches 4 if entity @s[tag=ender_4pc] run function evercraft:artifacts/sets/ender/remove_4pc
execute unless score @s ec.ender matches 2.. if entity @s[tag=ender_2pc] run function evercraft:artifacts/sets/ender/remove_2pc

# ============================================
# STORM SET
# ============================================
# Count armor pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"storm"}] run scoreboard players add @s ec.storm 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"storm"}] run scoreboard players add @s ec.storm 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"storm"}] run scoreboard players add @s ec.storm 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"storm"}] run scoreboard players add @s ec.storm 1
# Count tools in mainhand OR inventory (tools sync to set even when not held)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"storm_pickaxe"}] run scoreboard players add @s ec.storm 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"storm_shovel"}] run scoreboard players add @s ec.storm 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"storm_hoe"}] run scoreboard players add @s ec.storm 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"storm_pickaxe"}] if items entity @s container.* *[custom_data~{artifact:"storm_pickaxe"}] run scoreboard players add @s ec.storm 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"storm_shovel"}] if items entity @s container.* *[custom_data~{artifact:"storm_shovel"}] run scoreboard players add @s ec.storm 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"storm_hoe"}] if items entity @s container.* *[custom_data~{artifact:"storm_hoe"}] run scoreboard players add @s ec.storm 1

# Apply bonuses (require at least 1 armor piece — tools alone don't trigger)
execute if score @s ec.storm matches 2.. if items entity @s armor.* *[custom_data~{artifact_set:"storm"}] run function evercraft:artifacts/sets/storm/bonus_2pc
execute if score @s ec.storm matches 4.. if items entity @s armor.* *[custom_data~{artifact_set:"storm"}] run function evercraft:artifacts/sets/storm/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.storm matches 4.. if entity @s[tag=storm_4pc] run function evercraft:artifacts/sets/storm/remove_4pc
execute unless score @s ec.storm matches 2.. if entity @s[tag=storm_2pc] run function evercraft:artifacts/sets/storm/remove_2pc
# Also remove if no armor worn at all
execute unless items entity @s armor.* *[custom_data~{artifact_set:"storm"}] if entity @s[tag=storm_2pc] run function evercraft:artifacts/sets/storm/remove_2pc
execute unless items entity @s armor.* *[custom_data~{artifact_set:"storm"}] if entity @s[tag=storm_4pc] run function evercraft:artifacts/sets/storm/remove_4pc

# ============================================
# NATURE SET
# ============================================
# Count armor pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"nature"}] run scoreboard players add @s ec.nature 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"nature"}] run scoreboard players add @s ec.nature 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"nature"}] run scoreboard players add @s ec.nature 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"nature"}] run scoreboard players add @s ec.nature 1
# Count tools in mainhand OR inventory (tools sync to set even when not held)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"nature_pickaxe"}] run scoreboard players add @s ec.nature 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"nature_shovel"}] run scoreboard players add @s ec.nature 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"nature_hoe"}] run scoreboard players add @s ec.nature 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"nature_pickaxe"}] if items entity @s container.* *[custom_data~{artifact:"nature_pickaxe"}] run scoreboard players add @s ec.nature 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"nature_shovel"}] if items entity @s container.* *[custom_data~{artifact:"nature_shovel"}] run scoreboard players add @s ec.nature 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"nature_hoe"}] if items entity @s container.* *[custom_data~{artifact:"nature_hoe"}] run scoreboard players add @s ec.nature 1

# Apply bonuses (require at least 1 armor piece — tools alone don't trigger)
execute if score @s ec.nature matches 2.. if items entity @s armor.* *[custom_data~{artifact_set:"nature"}] run function evercraft:artifacts/sets/nature/bonus_2pc
execute if score @s ec.nature matches 4.. if items entity @s armor.* *[custom_data~{artifact_set:"nature"}] run function evercraft:artifacts/sets/nature/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.nature matches 4.. if entity @s[tag=nature_4pc] run function evercraft:artifacts/sets/nature/remove_4pc
execute unless score @s ec.nature matches 2.. if entity @s[tag=nature_2pc] run function evercraft:artifacts/sets/nature/remove_2pc
# Also remove if no armor worn at all
execute unless items entity @s armor.* *[custom_data~{artifact_set:"nature"}] if entity @s[tag=nature_2pc] run function evercraft:artifacts/sets/nature/remove_2pc
execute unless items entity @s armor.* *[custom_data~{artifact_set:"nature"}] if entity @s[tag=nature_4pc] run function evercraft:artifacts/sets/nature/remove_4pc

# ============================================
# GOLEM SET
# ============================================
# Count pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"golem"}] run scoreboard players add @s ec.golem 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"golem"}] run scoreboard players add @s ec.golem 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"golem"}] run scoreboard players add @s ec.golem 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"golem"}] run scoreboard players add @s ec.golem 1

# Apply bonuses
execute if score @s ec.golem matches 2.. run function evercraft:artifacts/sets/golem/bonus_2pc
execute if score @s ec.golem matches 4 run function evercraft:artifacts/sets/golem/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.golem matches 4 if entity @s[tag=golem_4pc] run function evercraft:artifacts/sets/golem/remove_4pc
execute unless score @s ec.golem matches 2.. if entity @s[tag=golem_2pc] run function evercraft:artifacts/sets/golem/remove_2pc

# ============================================
# SCULK SET
# ============================================
# Count armor pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"sculk"}] run scoreboard players add @s ec.sculk 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"sculk"}] run scoreboard players add @s ec.sculk 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"sculk"}] run scoreboard players add @s ec.sculk 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"sculk"}] run scoreboard players add @s ec.sculk 1
# Count tools in mainhand OR inventory (tools sync to set even when not held)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"sculk_pickaxe"}] run scoreboard players add @s ec.sculk 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"sculk_shovel"}] run scoreboard players add @s ec.sculk 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"sculk_hoe"}] run scoreboard players add @s ec.sculk 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"sculk_pickaxe"}] if items entity @s container.* *[custom_data~{artifact:"sculk_pickaxe"}] run scoreboard players add @s ec.sculk 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"sculk_shovel"}] if items entity @s container.* *[custom_data~{artifact:"sculk_shovel"}] run scoreboard players add @s ec.sculk 1
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"sculk_hoe"}] if items entity @s container.* *[custom_data~{artifact:"sculk_hoe"}] run scoreboard players add @s ec.sculk 1

# Apply bonuses (require at least 1 armor piece — tools alone don't trigger)
execute if score @s ec.sculk matches 2.. if items entity @s armor.* *[custom_data~{artifact_set:"sculk"}] run function evercraft:artifacts/sets/sculk/bonus_2pc
execute if score @s ec.sculk matches 4.. if items entity @s armor.* *[custom_data~{artifact_set:"sculk"}] run function evercraft:artifacts/sets/sculk/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.sculk matches 4.. if entity @s[tag=sculk_4pc] run function evercraft:artifacts/sets/sculk/remove_4pc
execute unless score @s ec.sculk matches 2.. if entity @s[tag=sculk_2pc] run function evercraft:artifacts/sets/sculk/remove_2pc
# Also remove if no armor worn at all
execute unless items entity @s armor.* *[custom_data~{artifact_set:"sculk"}] if entity @s[tag=sculk_2pc] run function evercraft:artifacts/sets/sculk/remove_2pc
execute unless items entity @s armor.* *[custom_data~{artifact_set:"sculk"}] if entity @s[tag=sculk_4pc] run function evercraft:artifacts/sets/sculk/remove_4pc

# ============================================
# CELESTIAL SET
# ============================================
# Count pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"celestial"}] run scoreboard players add @s ec.celestial 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"celestial"}] run scoreboard players add @s ec.celestial 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"celestial"}] run scoreboard players add @s ec.celestial 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"celestial"}] run scoreboard players add @s ec.celestial 1

# Apply bonuses
execute if score @s ec.celestial matches 2.. run function evercraft:artifacts/sets/celestial/bonus_2pc
execute if score @s ec.celestial matches 4 run function evercraft:artifacts/sets/celestial/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.celestial matches 4 if entity @s[tag=celestial_4pc] run function evercraft:artifacts/sets/celestial/remove_4pc
execute unless score @s ec.celestial matches 2.. if entity @s[tag=celestial_2pc] run function evercraft:artifacts/sets/celestial/remove_2pc

# ============================================
# BLOOD SET
# ============================================
# Count pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"blood"}] run scoreboard players add @s ec.blood 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"blood"}] run scoreboard players add @s ec.blood 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"blood"}] run scoreboard players add @s ec.blood 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"blood"}] run scoreboard players add @s ec.blood 1

# Apply bonuses
execute if score @s ec.blood matches 2.. run function evercraft:artifacts/sets/blood/bonus_2pc
execute if score @s ec.blood matches 4 run function evercraft:artifacts/sets/blood/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.blood matches 4 if entity @s[tag=blood_4pc] run function evercraft:artifacts/sets/blood/remove_4pc
execute unless score @s ec.blood matches 2.. if entity @s[tag=blood_2pc] run function evercraft:artifacts/sets/blood/remove_2pc

# ============================================
# SHADOW SET
# ============================================
# Count pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"shadow"}] run scoreboard players add @s ec.shadow 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"shadow"}] run scoreboard players add @s ec.shadow 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"shadow"}] run scoreboard players add @s ec.shadow 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"shadow"}] run scoreboard players add @s ec.shadow 1

# Apply bonuses
execute if score @s ec.shadow matches 2.. run function evercraft:artifacts/sets/shadow/bonus_2pc
execute if score @s ec.shadow matches 4 run function evercraft:artifacts/sets/shadow/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.shadow matches 4 if entity @s[tag=shadow_4pc] run function evercraft:artifacts/sets/shadow/remove_4pc
execute unless score @s ec.shadow matches 2.. if entity @s[tag=shadow_2pc] run function evercraft:artifacts/sets/shadow/remove_2pc

# ============================================
# CRYSTAL SET
# ============================================
# Count pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"crystal"}] run scoreboard players add @s ec.crystal 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"crystal"}] run scoreboard players add @s ec.crystal 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"crystal"}] run scoreboard players add @s ec.crystal 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"crystal"}] run scoreboard players add @s ec.crystal 1

# Apply bonuses
execute if score @s ec.crystal matches 2.. run function evercraft:artifacts/sets/crystal/bonus_2pc
execute if score @s ec.crystal matches 4 run function evercraft:artifacts/sets/crystal/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.crystal matches 4 if entity @s[tag=crystal_4pc] run function evercraft:artifacts/sets/crystal/remove_4pc
execute unless score @s ec.crystal matches 2.. if entity @s[tag=crystal_2pc] run function evercraft:artifacts/sets/crystal/remove_2pc

# ============================================
# DRAGONMASTER SET (Mythical)
# ============================================
# Count armor pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"dragonmaster"}] run scoreboard players add @s ec.dragonmaster 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"dragonmaster"}] run scoreboard players add @s ec.dragonmaster 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"dragonmaster"}] run scoreboard players add @s ec.dragonmaster 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"dragonmaster"}] run scoreboard players add @s ec.dragonmaster 1
# Check mainhand and offhand for dragonmaster weapons (counted independently for 6pc)
execute if items entity @s weapon.mainhand *[custom_data~{artifact_set:"dragonmaster"}] run scoreboard players add @s ec.dragonmaster 1
execute if items entity @s weapon.offhand *[custom_data~{artifact_set:"dragonmaster"}] run scoreboard players add @s ec.dragonmaster 1

# ============================================
# TITAN'S SHROUD SET (Mythical)
# ============================================
# Count armor pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"titan"}] run scoreboard players add @s ec.titan 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"titan"}] run scoreboard players add @s ec.titan 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"titan"}] run scoreboard players add @s ec.titan 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"titan"}] run scoreboard players add @s ec.titan 1
# Check mainhand and offhand for titan weapons (counted independently for 6pc)
execute if items entity @s weapon.mainhand *[custom_data~{artifact_set:"titan"}] run scoreboard players add @s ec.titan 1
execute if items entity @s weapon.offhand *[custom_data~{artifact_set:"titan"}] run scoreboard players add @s ec.titan 1

# ============================================
# VERDANT SET (Mythical)
# ============================================
# Count armor pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"verdant"}] run scoreboard players add @s ec.verdant 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"verdant"}] run scoreboard players add @s ec.verdant 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"verdant"}] run scoreboard players add @s ec.verdant 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"verdant"}] run scoreboard players add @s ec.verdant 1
# Check mainhand for Harvest weapons (artifact_set "harvest" or "verdant")
execute if items entity @s weapon.mainhand *[custom_data~{artifact_set:"harvest"}] run scoreboard players add @s ec.verdant 1
execute if items entity @s weapon.mainhand *[custom_data~{artifact_set:"verdant"}] run scoreboard players add @s ec.verdant 1

# ============================================
# EMBER SET (Exquisite)
# ============================================
# Count pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"ember"}] run scoreboard players add @s ec.ember 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"ember"}] run scoreboard players add @s ec.ember 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"ember"}] run scoreboard players add @s ec.ember 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"ember"}] run scoreboard players add @s ec.ember 1

# Apply bonuses
execute if score @s ec.ember matches 2.. run function evercraft:artifacts/sets/ember/bonus_2pc
execute if score @s ec.ember matches 4 run function evercraft:artifacts/sets/ember/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.ember matches 4 if entity @s[tag=ember_4pc] run function evercraft:artifacts/sets/ember/remove_4pc
execute unless score @s ec.ember matches 2.. if entity @s[tag=ember_2pc] run function evercraft:artifacts/sets/ember/remove_2pc

# ============================================
# NINJA SET (Exquisite)
# ============================================
# Count pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"ninja"}] run scoreboard players add @s ec.ninja 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"ninja"}] run scoreboard players add @s ec.ninja 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"ninja"}] run scoreboard players add @s ec.ninja 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"ninja"}] run scoreboard players add @s ec.ninja 1

# Apply bonuses
execute if score @s ec.ninja matches 2.. run function evercraft:artifacts/sets/ninja/bonus_2pc
execute if score @s ec.ninja matches 4 run function evercraft:artifacts/sets/ninja/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.ninja matches 4 if entity @s[tag=ninja_4pc] run function evercraft:artifacts/sets/ninja/remove_4pc
execute unless score @s ec.ninja matches 2.. if entity @s[tag=ninja_2pc] run function evercraft:artifacts/sets/ninja/remove_2pc

# ============================================
# CLOAKED SKULL SET (Exquisite)
# ============================================
# Count pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"cloaked_skull"}] run scoreboard players add @s ec.cloaked_skull 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"cloaked_skull"}] run scoreboard players add @s ec.cloaked_skull 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"cloaked_skull"}] run scoreboard players add @s ec.cloaked_skull 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"cloaked_skull"}] run scoreboard players add @s ec.cloaked_skull 1

# Apply bonuses
execute if score @s ec.cloaked_skull matches 2.. run function evercraft:artifacts/sets/cloaked_skull/bonus_2pc
execute if score @s ec.cloaked_skull matches 4 run function evercraft:artifacts/sets/cloaked_skull/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.cloaked_skull matches 4 if entity @s[tag=cloaked_skull_4pc] run function evercraft:artifacts/sets/cloaked_skull/remove_4pc
execute unless score @s ec.cloaked_skull matches 2.. if entity @s[tag=cloaked_skull_2pc] run function evercraft:artifacts/sets/cloaked_skull/remove_2pc

# ============================================
# SPACE SET (Exquisite)
# ============================================
# Count pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"space"}] run scoreboard players add @s ec.space 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"space"}] run scoreboard players add @s ec.space 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"space"}] run scoreboard players add @s ec.space 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"space"}] run scoreboard players add @s ec.space 1

# Apply bonuses
execute if score @s ec.space matches 2.. run function evercraft:artifacts/sets/space/bonus_2pc
execute if score @s ec.space matches 4 run function evercraft:artifacts/sets/space/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.space matches 4 if entity @s[tag=space_4pc] run function evercraft:artifacts/sets/space/remove_4pc
execute unless score @s ec.space matches 2.. if entity @s[tag=space_2pc] run function evercraft:artifacts/sets/space/remove_2pc

# ============================================
# JOURNEY SET (Mythical)
# ============================================
# Count armor pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"journey"}] run scoreboard players add @s ec.journey 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"journey"}] run scoreboard players add @s ec.journey 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"journey"}] run scoreboard players add @s ec.journey 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"journey"}] run scoreboard players add @s ec.journey 1
# Check mainhand for Journey weapon (pickaxe or shovel)
execute if items entity @s weapon.mainhand *[custom_data~{artifact_set:"journey"}] run scoreboard players add @s ec.journey 1

# ============================================
# SPLENDID SET (Mythical)
# ============================================
# Count armor pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"splendid"}] run scoreboard players add @s ec.splendid 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"splendid"}] run scoreboard players add @s ec.splendid 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"splendid"}] run scoreboard players add @s ec.splendid 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"splendid"}] run scoreboard players add @s ec.splendid 1
# Check mainhand and offhand for splendid weapons (counted independently for 6pc)
execute if items entity @s weapon.mainhand *[custom_data~{artifact_set:"splendid"}] run scoreboard players add @s ec.splendid 1
execute if items entity @s weapon.offhand *[custom_data~{artifact_set:"splendid"}] run scoreboard players add @s ec.splendid 1

# ============================================
# INFERNAL SET (Mythical — Nether Exclusive)
# ============================================
# Count armor pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"infernal"}] run scoreboard players add @s ec.infernal 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"infernal"}] run scoreboard players add @s ec.infernal 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"infernal"}] run scoreboard players add @s ec.infernal 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"infernal"}] run scoreboard players add @s ec.infernal 1
# Check mainhand and offhand for infernal weapons (counted independently for 6pc)
execute if items entity @s weapon.mainhand *[custom_data~{artifact_set:"infernal"}] run scoreboard players add @s ec.infernal 1
execute if items entity @s weapon.offhand *[custom_data~{artifact_set:"infernal"}] run scoreboard players add @s ec.infernal 1

# ============================================
# ENDER DRAGON SET (Mythical — End Exclusive)
# ============================================
# Count armor pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"ender_dragon"}] run scoreboard players add @s ec.ender_dragon 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"ender_dragon"}] run scoreboard players add @s ec.ender_dragon 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"ender_dragon"}] run scoreboard players add @s ec.ender_dragon 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"ender_dragon"}] run scoreboard players add @s ec.ender_dragon 1
# Check mainhand and offhand for ender_dragon weapons (counted independently for 6pc)
execute if items entity @s weapon.mainhand *[custom_data~{artifact_set:"ender_dragon"}] run scoreboard players add @s ec.ender_dragon 1
execute if items entity @s weapon.offhand *[custom_data~{artifact_set:"ender_dragon"}] run scoreboard players add @s ec.ender_dragon 1

# ============================================
# FIREFORGED SET (Exquisite)
# ============================================
# Count pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"fireforged"}] run scoreboard players add @s ec.fireforged 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"fireforged"}] run scoreboard players add @s ec.fireforged 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"fireforged"}] run scoreboard players add @s ec.fireforged 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"fireforged"}] run scoreboard players add @s ec.fireforged 1

# Apply bonuses
execute if score @s ec.fireforged matches 2.. run function evercraft:artifacts/sets/fireforged/bonus_2pc
execute if score @s ec.fireforged matches 4 run function evercraft:artifacts/sets/fireforged/bonus_4pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.fireforged matches 4 if entity @s[tag=fireforged_4pc] run function evercraft:artifacts/sets/fireforged/remove_4pc
execute unless score @s ec.fireforged matches 2.. if entity @s[tag=fireforged_2pc] run function evercraft:artifacts/sets/fireforged/remove_2pc

# ============================================
# DRAGON FAN WILDCARD
# ============================================
# If Dragon Fan is in mainhand or offhand, add +1 to the highest mythical set
execute if items entity @s weapon.mainhand *[custom_data~{artifact:"dragon_fan"}] run function evercraft:artifacts/sets/dragon_fan_wildcard
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:"dragon_fan"}] if items entity @s weapon.offhand *[custom_data~{artifact:"dragon_fan"}] run function evercraft:artifacts/sets/dragon_fan_wildcard

# ============================================
# MYTHICAL SET BONUSES (after counting + wildcard)
# ============================================
# ============================================
# HERO'S ETERNAL SET (Gacha Exclusive)
# ============================================
# Count armor pieces
execute if items entity @s armor.head *[custom_data~{artifact_set:"hero"}] run scoreboard players add @s ec.hero 1
execute if items entity @s armor.chest *[custom_data~{artifact_set:"hero"}] run scoreboard players add @s ec.hero 1
execute if items entity @s armor.legs *[custom_data~{artifact_set:"hero"}] run scoreboard players add @s ec.hero 1
execute if items entity @s armor.feet *[custom_data~{artifact_set:"hero"}] run scoreboard players add @s ec.hero 1
# Count Hero swords in mainhand/offhand
execute if items entity @s weapon.mainhand *[custom_data~{artifact_set:"hero"}] run scoreboard players add @s ec.hero 1
execute if items entity @s weapon.offhand *[custom_data~{artifact_set:"hero"}] run scoreboard players add @s ec.hero 1

# Apply bonuses
execute if score @s ec.hero matches 2.. run function evercraft:artifacts/sets/hero/bonus_2pc
execute if score @s ec.hero matches 4.. run function evercraft:artifacts/sets/hero/bonus_4pc
execute if score @s ec.hero matches 5.. run function evercraft:artifacts/sets/hero/bonus_5pc
execute if score @s ec.hero matches 6 run function evercraft:artifacts/sets/hero/bonus_6pc

# Remove bonuses when not wearing enough pieces
execute unless score @s ec.hero matches 6 if entity @s[tag=hero_6pc] run function evercraft:artifacts/sets/hero/remove_6pc
execute unless score @s ec.hero matches 5.. if entity @s[tag=hero_5pc] run function evercraft:artifacts/sets/hero/remove_5pc
execute unless score @s ec.hero matches 4.. if entity @s[tag=hero_4pc] run function evercraft:artifacts/sets/hero/remove_4pc
execute unless score @s ec.hero matches 2.. if entity @s[tag=hero_2pc] run function evercraft:artifacts/sets/hero/remove_2pc

function evercraft:artifacts/sets/mythical_bonuses
