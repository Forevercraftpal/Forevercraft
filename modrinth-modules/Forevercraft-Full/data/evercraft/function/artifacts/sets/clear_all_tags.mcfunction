# Clear All Set Bonuses — called when player has no artifact armor
# Removes any active set bonus tags and their effects
# Run as player

# Reset all set piece counts
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

# Remove active 4-piece set bonuses (only call remove if tag exists)
execute if entity @s[tag=dragonslayer_4pc] run function evercraft:artifacts/sets/dragonslayer/remove_4pc
execute if entity @s[tag=dragonslayer_2pc] run function evercraft:artifacts/sets/dragonslayer/remove_2pc
execute if entity @s[tag=netherwalker_4pc] run function evercraft:artifacts/sets/netherwalker/remove_4pc
execute if entity @s[tag=netherwalker_2pc] run function evercraft:artifacts/sets/netherwalker/remove_2pc
execute if entity @s[tag=frost_4pc] run function evercraft:artifacts/sets/frost/remove_4pc
execute if entity @s[tag=frost_2pc] run function evercraft:artifacts/sets/frost/remove_2pc
execute if entity @s[tag=wither_4pc] run function evercraft:artifacts/sets/wither/remove_4pc
execute if entity @s[tag=wither_2pc] run function evercraft:artifacts/sets/wither/remove_2pc
execute if entity @s[tag=phantom_4pc] run function evercraft:artifacts/sets/phantom/remove_4pc
execute if entity @s[tag=phantom_2pc] run function evercraft:artifacts/sets/phantom/remove_2pc
execute if entity @s[tag=ocean_4pc] run function evercraft:artifacts/sets/ocean/remove_4pc
execute if entity @s[tag=ocean_2pc] run function evercraft:artifacts/sets/ocean/remove_2pc
execute if entity @s[tag=ender_4pc] run function evercraft:artifacts/sets/ender/remove_4pc
execute if entity @s[tag=ender_2pc] run function evercraft:artifacts/sets/ender/remove_2pc
execute if entity @s[tag=storm_4pc] run function evercraft:artifacts/sets/storm/remove_4pc
execute if entity @s[tag=storm_2pc] run function evercraft:artifacts/sets/storm/remove_2pc
execute if entity @s[tag=nature_4pc] run function evercraft:artifacts/sets/nature/remove_4pc
execute if entity @s[tag=nature_2pc] run function evercraft:artifacts/sets/nature/remove_2pc
execute if entity @s[tag=golem_4pc] run function evercraft:artifacts/sets/golem/remove_4pc
execute if entity @s[tag=golem_2pc] run function evercraft:artifacts/sets/golem/remove_2pc
execute if entity @s[tag=sculk_4pc] run function evercraft:artifacts/sets/sculk/remove_4pc
execute if entity @s[tag=sculk_2pc] run function evercraft:artifacts/sets/sculk/remove_2pc
execute if entity @s[tag=celestial_4pc] run function evercraft:artifacts/sets/celestial/remove_4pc
execute if entity @s[tag=celestial_2pc] run function evercraft:artifacts/sets/celestial/remove_2pc
execute if entity @s[tag=blood_4pc] run function evercraft:artifacts/sets/blood/remove_4pc
execute if entity @s[tag=blood_2pc] run function evercraft:artifacts/sets/blood/remove_2pc
execute if entity @s[tag=shadow_4pc] run function evercraft:artifacts/sets/shadow/remove_4pc
execute if entity @s[tag=shadow_2pc] run function evercraft:artifacts/sets/shadow/remove_2pc
execute if entity @s[tag=crystal_4pc] run function evercraft:artifacts/sets/crystal/remove_4pc
execute if entity @s[tag=crystal_2pc] run function evercraft:artifacts/sets/crystal/remove_2pc
execute if entity @s[tag=ember_4pc] run function evercraft:artifacts/sets/ember/remove_4pc
execute if entity @s[tag=ember_2pc] run function evercraft:artifacts/sets/ember/remove_2pc
execute if entity @s[tag=ninja_4pc] run function evercraft:artifacts/sets/ninja/remove_4pc
execute if entity @s[tag=ninja_2pc] run function evercraft:artifacts/sets/ninja/remove_2pc
execute if entity @s[tag=cloaked_skull_4pc] run function evercraft:artifacts/sets/cloaked_skull/remove_4pc
execute if entity @s[tag=cloaked_skull_2pc] run function evercraft:artifacts/sets/cloaked_skull/remove_2pc
execute if entity @s[tag=space_4pc] run function evercraft:artifacts/sets/space/remove_4pc
execute if entity @s[tag=space_2pc] run function evercraft:artifacts/sets/space/remove_2pc
execute if entity @s[tag=fireforged_4pc] run function evercraft:artifacts/sets/fireforged/remove_4pc
execute if entity @s[tag=fireforged_2pc] run function evercraft:artifacts/sets/fireforged/remove_2pc

# Remove active 6-piece set bonuses (before 5pc so downgrades work correctly)
execute if entity @s[tag=dragonmaster_6pc] run function evercraft:artifacts/sets/dragonmaster/remove_6pc
execute if entity @s[tag=titan_6pc] run function evercraft:artifacts/sets/titan/remove_6pc
execute if entity @s[tag=splendid_6pc] run function evercraft:artifacts/sets/splendid/remove_6pc
execute if entity @s[tag=infernal_6pc] run function evercraft:artifacts/sets/infernal/remove_6pc
execute if entity @s[tag=ender_dragon_6pc] run function evercraft:artifacts/sets/ender_dragon/remove_6pc
execute if entity @s[tag=hero_6pc] run function evercraft:artifacts/sets/hero/remove_6pc

# Remove active 5-piece set bonuses
execute if entity @s[tag=dragonmaster_5pc] run function evercraft:artifacts/sets/dragonmaster/remove_5pc
execute if entity @s[tag=dragonmaster_4pc] run function evercraft:artifacts/sets/dragonmaster/remove_4pc
execute if entity @s[tag=dragonmaster_2pc] run function evercraft:artifacts/sets/dragonmaster/remove_2pc
execute if entity @s[tag=titan_5pc] run function evercraft:artifacts/sets/titan/remove_5pc
execute if entity @s[tag=titan_4pc] run function evercraft:artifacts/sets/titan/remove_4pc
execute if entity @s[tag=titan_2pc] run function evercraft:artifacts/sets/titan/remove_2pc
execute if entity @s[tag=verdant_5pc] run function evercraft:artifacts/sets/verdant/remove_5pc
execute if entity @s[tag=verdant_4pc] run function evercraft:artifacts/sets/verdant/remove_4pc
execute if entity @s[tag=verdant_2pc] run function evercraft:artifacts/sets/verdant/remove_2pc
execute if entity @s[tag=journey_5pc] run function evercraft:artifacts/sets/journey/remove_5pc
execute if entity @s[tag=journey_4pc] run function evercraft:artifacts/sets/journey/remove_4pc
execute if entity @s[tag=journey_2pc] run function evercraft:artifacts/sets/journey/remove_2pc
execute if entity @s[tag=splendid_5pc] run function evercraft:artifacts/sets/splendid/remove_5pc
execute if entity @s[tag=splendid_4pc] run function evercraft:artifacts/sets/splendid/remove_4pc
execute if entity @s[tag=splendid_2pc] run function evercraft:artifacts/sets/splendid/remove_2pc
execute if entity @s[tag=infernal_5pc] run function evercraft:artifacts/sets/infernal/remove_5pc
execute if entity @s[tag=infernal_4pc] run function evercraft:artifacts/sets/infernal/remove_4pc
execute if entity @s[tag=infernal_2pc] run function evercraft:artifacts/sets/infernal/remove_2pc
execute if entity @s[tag=ender_dragon_5pc] run function evercraft:artifacts/sets/ender_dragon/remove_5pc
execute if entity @s[tag=ender_dragon_4pc] run function evercraft:artifacts/sets/ender_dragon/remove_4pc
execute if entity @s[tag=ender_dragon_2pc] run function evercraft:artifacts/sets/ender_dragon/remove_2pc
execute if entity @s[tag=hero_5pc] run function evercraft:artifacts/sets/hero/remove_5pc
execute if entity @s[tag=hero_4pc] run function evercraft:artifacts/sets/hero/remove_4pc
execute if entity @s[tag=hero_2pc] run function evercraft:artifacts/sets/hero/remove_2pc

# Remove per-piece attribute state tags + modifiers
execute if entity @s[tag=ec.titans_plate] run attribute @s max_health modifier remove evercraft:titans_plate_health
execute if entity @s[tag=ec.warriors_crown] run attribute @s attack_damage modifier remove evercraft:warriors_crown_damage
execute if entity @s[tag=ec.fortitude] run attribute @s knockback_resistance modifier remove evercraft:fortitude_kb_resist
execute if entity @s[tag=ec.infernal_dmg] run attribute @s attack_damage modifier remove evercraft:infernal_nether_dmg
tag @s remove ec.titans_plate
tag @s remove ec.warriors_crown
tag @s remove ec.fortitude
tag @s remove ec.infernal_dmg

# Remove class bonus tags and attribute modifiers (safety cleanup)
# Ender Dragon — Tank/Knight
execute if entity @s[tag=ed_tank_2pc] run attribute @s max_health modifier remove evercraft:ed_tank_2pc_hp
execute if entity @s[tag=ed_knight_2pc] run attribute @s attack_damage modifier remove evercraft:ed_knight_2pc_dmg
execute if entity @s[tag=ed_tank_4pc] run attribute @s knockback_resistance modifier remove evercraft:ed_tank_4pc_kb
execute if entity @s[tag=ed_knight_5pc] run attribute @s attack_damage modifier remove evercraft:ed_knight_5pc_dmg
execute if entity @s[tag=ed_knight_6pc] run attribute @s attack_damage modifier remove evercraft:ed_knight_6pc_dmg
execute if entity @s[tag=ed_knight_6pc] run attribute @s entity_interaction_range modifier remove evercraft:ed_knight_6pc_reach
tag @s remove ed_tank_2pc
tag @s remove ed_knight_2pc
tag @s remove ed_tank_4pc
tag @s remove ed_knight_5pc
tag @s remove ed_knight_6pc
# Infernal — Striker/Sentinel
execute if entity @s[tag=inf_striker_2pc] run attribute @s attack_damage modifier remove evercraft:inf_striker_2pc_dmg
execute if entity @s[tag=inf_sentinel_2pc] run attribute @s max_health modifier remove evercraft:inf_sentinel_2pc_hp
execute if entity @s[tag=inf_striker_4pc] run attribute @s attack_speed modifier remove evercraft:inf_striker_4pc_aspd
execute if entity @s[tag=inf_sentinel_4pc] run attribute @s knockback_resistance modifier remove evercraft:inf_sentinel_4pc_kb
execute if entity @s[tag=inf_striker_5pc] run attribute @s attack_damage modifier remove evercraft:inf_striker_5pc_dmg
execute if entity @s[tag=inf_sentinel_6pc] run attribute @s armor modifier remove evercraft:inf_sentinel_6pc_armor
tag @s remove inf_striker_2pc
tag @s remove inf_sentinel_2pc
tag @s remove inf_striker_4pc
tag @s remove inf_sentinel_4pc
tag @s remove inf_striker_5pc
tag @s remove inf_sentinel_6pc
# Verdant — Archer/Hunter
execute if entity @s[tag=vrd_archer_2pc] run attribute @s attack_damage modifier remove evercraft:vrd_archer_2pc_dmg
execute if entity @s[tag=vrd_hunter_2pc] run attribute @s attack_speed modifier remove evercraft:vrd_hunter_2pc_aspd
execute if entity @s[tag=vrd_archer_5pc] run attribute @s attack_damage modifier remove evercraft:vrd_archer_5pc_dmg
execute if entity @s[tag=vrd_hunter_5pc] run attribute @s attack_damage modifier remove evercraft:vrd_hunter_5pc_dmg
tag @s remove vrd_archer_2pc
tag @s remove vrd_hunter_2pc
tag @s remove vrd_archer_5pc
tag @s remove vrd_hunter_5pc
# Dragonmaster — Berserker/Dancer
execute if entity @s[tag=dm_berserk_2pc] run attribute @s attack_damage modifier remove evercraft:dm_berserk_2pc_dmg
execute if entity @s[tag=dm_berserk_4pc] run attribute @s attack_speed modifier remove evercraft:dm_berserk_4pc_aspd
execute if entity @s[tag=dm_dancer_4pc] run attribute @s attack_damage modifier remove evercraft:dm_dancer_4pc_dmg
execute if entity @s[tag=dm_dancer_5pc] run attribute @s attack_speed modifier remove evercraft:dm_dancer_5pc_aspd
execute if entity @s[tag=dm_berserker_6pc] run attribute @s attack_damage modifier remove evercraft:dm_berserker_6pc_dmg
execute if entity @s[tag=dm_dancer_6pc] run attribute @s attack_speed modifier remove evercraft:dm_dancer_6pc_aspd
tag @s remove dm_berserk_2pc
tag @s remove dm_berserk_4pc
tag @s remove dm_dancer_4pc
tag @s remove dm_dancer_5pc
tag @s remove dm_berserker_6pc
tag @s remove dm_dancer_6pc
# Splendid — Rogue
execute if entity @s[tag=spl_rogue_2pc] run attribute @s attack_damage modifier remove evercraft:spl_rogue_2pc_dmg
execute if entity @s[tag=spl_rogue_4pc] run attribute @s attack_speed modifier remove evercraft:spl_rogue_4pc_aspd
execute if entity @s[tag=spl_rogue_5pc] run attribute @s attack_damage modifier remove evercraft:spl_rogue_5pc_dmg
execute if entity @s[tag=spl_rogue_6pc] run attribute @s attack_damage modifier remove evercraft:spl_rogue_6pc_dmg
tag @s remove spl_rogue_2pc
tag @s remove spl_rogue_4pc
tag @s remove spl_rogue_5pc
tag @s remove spl_rogue_6pc
# Titan — Javelin/Hoplite
execute if entity @s[tag=ttn_jav_2pc] run attribute @s attack_damage modifier remove evercraft:ttn_jav_2pc_dmg
execute if entity @s[tag=ttn_hop_2pc] run attribute @s max_health modifier remove evercraft:ttn_hop_2pc_hp
execute if entity @s[tag=ttn_hop_4pc] run attribute @s knockback_resistance modifier remove evercraft:ttn_hop_4pc_kb
execute if entity @s[tag=ttn_jav_5pc] run attribute @s attack_damage modifier remove evercraft:ttn_jav_5pc_dmg
execute if entity @s[tag=ttn_hoplite_6pc] run attribute @s max_health modifier remove evercraft:ttn_hoplite_6pc_hp
tag @s remove ttn_jav_2pc
tag @s remove ttn_hop_2pc
tag @s remove ttn_hop_4pc
tag @s remove ttn_jav_5pc
tag @s remove ttn_hoplite_6pc
# Journey — Beastlord/Healer
execute if entity @s[tag=jrn_beast_2pc] run attribute @s attack_damage modifier remove evercraft:jrn_beast_2pc_dmg
execute if entity @s[tag=jrn_heal_2pc] run attribute @s max_health modifier remove evercraft:jrn_heal_2pc_hp
tag @s remove jrn_beast_2pc
tag @s remove jrn_heal_2pc
# Hero — Dancer
execute if entity @s[tag=hero_dancer_2pc] run attribute @s attack_damage modifier remove evercraft:hero_dancer_2pc_dmg
execute if entity @s[tag=hero_dancer_4pc] run attribute @s attack_speed modifier remove evercraft:hero_dancer_4pc_aspd
execute if entity @s[tag=hero_dancer_5pc] run attribute @s attack_speed modifier remove evercraft:hero_dancer_5pc_aspd
execute if entity @s[tag=hero_dancer_6pc] run attribute @s attack_speed modifier remove evercraft:hero_dancer_6pc_aspd
tag @s remove hero_dancer_2pc
tag @s remove hero_dancer_4pc
tag @s remove hero_dancer_5pc
tag @s remove hero_dancer_6pc
# Hero per-piece
execute if entity @s[tag=ec.hero_night_dr] run attribute @s luck modifier remove evercraft:hero_night_dr
tag @s remove ec.hero_night_dr
