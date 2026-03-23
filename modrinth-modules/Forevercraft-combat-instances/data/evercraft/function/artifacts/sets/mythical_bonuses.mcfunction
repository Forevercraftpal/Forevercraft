# Mythical Set Bonuses — Apply/Remove
# Run AFTER all counting (including Dragon Fan wildcard) is complete
# Run as player at player

# ============================================
# DRAGONMASTER / WYRMRIDER
# ============================================
execute if score @s ec.dragonmaster matches 2.. run function evercraft:artifacts/sets/dragonmaster/bonus_2pc
execute if score @s ec.dragonmaster matches 4.. run function evercraft:artifacts/sets/dragonmaster/bonus_4pc
execute if score @s ec.dragonmaster matches 5.. run function evercraft:artifacts/sets/dragonmaster/bonus_5pc
execute if score @s ec.dragonmaster matches 6 run function evercraft:artifacts/sets/dragonmaster/bonus_6pc

execute unless score @s ec.dragonmaster matches 6 if entity @s[tag=dragonmaster_6pc] run function evercraft:artifacts/sets/dragonmaster/remove_6pc
execute unless score @s ec.dragonmaster matches 5.. if entity @s[tag=dragonmaster_5pc] run function evercraft:artifacts/sets/dragonmaster/remove_5pc
execute unless score @s ec.dragonmaster matches 4.. if entity @s[tag=dragonmaster_4pc] run function evercraft:artifacts/sets/dragonmaster/remove_4pc
execute unless score @s ec.dragonmaster matches 2.. if entity @s[tag=dragonmaster_2pc] run function evercraft:artifacts/sets/dragonmaster/remove_2pc

# ============================================
# TITAN / TEMPEST
# ============================================
execute if score @s ec.titan matches 2.. run function evercraft:artifacts/sets/titan/bonus_2pc
execute if score @s ec.titan matches 4.. run function evercraft:artifacts/sets/titan/bonus_4pc
execute if score @s ec.titan matches 5.. run function evercraft:artifacts/sets/titan/bonus_5pc
execute if score @s ec.titan matches 6 run function evercraft:artifacts/sets/titan/bonus_6pc

execute unless score @s ec.titan matches 6 if entity @s[tag=titan_6pc] run function evercraft:artifacts/sets/titan/remove_6pc
execute unless score @s ec.titan matches 5.. if entity @s[tag=titan_5pc] run function evercraft:artifacts/sets/titan/remove_5pc
execute unless score @s ec.titan matches 4.. if entity @s[tag=titan_4pc] run function evercraft:artifacts/sets/titan/remove_4pc
execute unless score @s ec.titan matches 2.. if entity @s[tag=titan_2pc] run function evercraft:artifacts/sets/titan/remove_2pc

# ============================================
# VERDANT / GROVE
# ============================================
execute if score @s ec.verdant matches 2.. run function evercraft:artifacts/sets/verdant/bonus_2pc
execute if score @s ec.verdant matches 4.. run function evercraft:artifacts/sets/verdant/bonus_4pc
execute if score @s ec.verdant matches 5 run function evercraft:artifacts/sets/verdant/bonus_5pc

execute unless score @s ec.verdant matches 5 if entity @s[tag=verdant_5pc] run function evercraft:artifacts/sets/verdant/remove_5pc
execute unless score @s ec.verdant matches 4.. if entity @s[tag=verdant_4pc] run function evercraft:artifacts/sets/verdant/remove_4pc
execute unless score @s ec.verdant matches 2.. if entity @s[tag=verdant_2pc] run function evercraft:artifacts/sets/verdant/remove_2pc

# ============================================
# JOURNEY
# ============================================
execute if score @s ec.journey matches 2.. run function evercraft:artifacts/sets/journey/bonus_2pc
execute if score @s ec.journey matches 4.. run function evercraft:artifacts/sets/journey/bonus_4pc
execute if score @s ec.journey matches 5 run function evercraft:artifacts/sets/journey/bonus_5pc

execute unless score @s ec.journey matches 5 if entity @s[tag=journey_5pc] run function evercraft:artifacts/sets/journey/remove_5pc
execute unless score @s ec.journey matches 4.. if entity @s[tag=journey_4pc] run function evercraft:artifacts/sets/journey/remove_4pc
execute unless score @s ec.journey matches 2.. if entity @s[tag=journey_2pc] run function evercraft:artifacts/sets/journey/remove_2pc

# ============================================
# SPLENDID / DELVER'S
# ============================================
execute if score @s ec.splendid matches 2.. run function evercraft:artifacts/sets/splendid/bonus_2pc
execute if score @s ec.splendid matches 4.. run function evercraft:artifacts/sets/splendid/bonus_4pc
execute if score @s ec.splendid matches 5.. run function evercraft:artifacts/sets/splendid/bonus_5pc
execute if score @s ec.splendid matches 6 run function evercraft:artifacts/sets/splendid/bonus_6pc

execute unless score @s ec.splendid matches 6 if entity @s[tag=splendid_6pc] run function evercraft:artifacts/sets/splendid/remove_6pc
execute unless score @s ec.splendid matches 5.. if entity @s[tag=splendid_5pc] run function evercraft:artifacts/sets/splendid/remove_5pc
execute unless score @s ec.splendid matches 4.. if entity @s[tag=splendid_4pc] run function evercraft:artifacts/sets/splendid/remove_4pc
execute unless score @s ec.splendid matches 2.. if entity @s[tag=splendid_2pc] run function evercraft:artifacts/sets/splendid/remove_2pc

# ============================================
# INFERNAL
# ============================================
execute if score @s ec.infernal matches 2.. run function evercraft:artifacts/sets/infernal/bonus_2pc
execute if score @s ec.infernal matches 4.. run function evercraft:artifacts/sets/infernal/bonus_4pc
execute if score @s ec.infernal matches 5.. run function evercraft:artifacts/sets/infernal/bonus_5pc
execute if score @s ec.infernal matches 6 run function evercraft:artifacts/sets/infernal/bonus_6pc

execute unless score @s ec.infernal matches 6 if entity @s[tag=infernal_6pc] run function evercraft:artifacts/sets/infernal/remove_6pc
execute unless score @s ec.infernal matches 5.. if entity @s[tag=infernal_5pc] run function evercraft:artifacts/sets/infernal/remove_5pc
execute unless score @s ec.infernal matches 4.. if entity @s[tag=infernal_4pc] run function evercraft:artifacts/sets/infernal/remove_4pc
execute unless score @s ec.infernal matches 2.. if entity @s[tag=infernal_2pc] run function evercraft:artifacts/sets/infernal/remove_2pc

# ============================================
# ENDER DRAGON / VOIDSCALE
# ============================================
execute if score @s ec.ender_dragon matches 2.. run function evercraft:artifacts/sets/ender_dragon/bonus_2pc
execute if score @s ec.ender_dragon matches 4.. run function evercraft:artifacts/sets/ender_dragon/bonus_4pc
execute if score @s ec.ender_dragon matches 5.. run function evercraft:artifacts/sets/ender_dragon/bonus_5pc
execute if score @s ec.ender_dragon matches 6 run function evercraft:artifacts/sets/ender_dragon/bonus_6pc

execute unless score @s ec.ender_dragon matches 6 if entity @s[tag=ender_dragon_6pc] run function evercraft:artifacts/sets/ender_dragon/remove_6pc
execute unless score @s ec.ender_dragon matches 5.. if entity @s[tag=ender_dragon_5pc] run function evercraft:artifacts/sets/ender_dragon/remove_5pc
execute unless score @s ec.ender_dragon matches 4.. if entity @s[tag=ender_dragon_4pc] run function evercraft:artifacts/sets/ender_dragon/remove_4pc
execute unless score @s ec.ender_dragon matches 2.. if entity @s[tag=ender_dragon_2pc] run function evercraft:artifacts/sets/ender_dragon/remove_2pc
