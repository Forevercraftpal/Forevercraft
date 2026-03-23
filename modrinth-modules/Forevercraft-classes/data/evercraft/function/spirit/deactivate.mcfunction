# Spirit Artifact Deactivation — Remove tags and clean up state
# Run as player who no longer holds a spirit artifact in mainhand

tag @s remove ec.sp_active

# Reset weapon-specific state
scoreboard players set @s ec.sp_weapon 0
scoreboard players set @s ec.sp_twin 0
scoreboard players set @s ec.sp_boosted 0
scoreboard players set @s ec.sp_state 0

# Reset passive counters
scoreboard players set @s ec.sp_combo 0
scoreboard players set @s ec.sp_charges 0
scoreboard players set @s ec.sp_hit_combo 0
scoreboard players set @s ec.sp_shield_charge 0

# Reset Rampage if active
scoreboard players set @s ec.sp_rampage 0
scoreboard players set @s ec.sp_rampage_dmg 0

# Remove any weapon-specific attribute modifiers
attribute @s armor modifier remove evercraft:spirit_armor_penalty
attribute @s armor_toughness modifier remove evercraft:spirit_toughness_penalty
attribute @s movement_speed modifier remove evercraft:spirit_speed_bonus
attribute @s max_health modifier remove evercraft:spirit_health_penalty
attribute @s attack_speed modifier remove evercraft:spirit_attack_speed
attribute @s attack_damage modifier remove evercraft:water_boost

# Remove frozen tags from any entities
tag @e[tag=ec.sp_frozen] remove ec.sp_frozen

# Remove active effects that were from spirit abilities
# (don't remove all effects — just spirit-specific ones tracked by tags)
execute if entity @s[tag=ec.sp_rampage_active] run tag @s remove ec.sp_rampage_active
execute if entity @s[tag=ec.sp_wall_active] run tag @s remove ec.sp_wall_active
execute if entity @s[tag=ec.sp_cyclone_active] run tag @s remove ec.sp_cyclone_active
execute if entity @s[tag=ec.sp_sanctuary_active] run tag @s remove ec.sp_sanctuary_active
execute if entity @s[tag=ec.sp_fortress_active] run tag @s remove ec.sp_fortress_active
execute if entity @s[tag=ec.sp_maelstrom_active] run tag @s remove ec.sp_maelstrom_active
execute if entity @s[tag=ec.sp_water_boost] run tag @s remove ec.sp_water_boost
execute if entity @s[tag=ec.sp_poseidon_charging] run tag @s remove ec.sp_poseidon_charging
execute if entity @s[tag=ec.sp_chrono_active] run tag @s remove ec.sp_chrono_active
execute if entity @s[tag=ec.sp_chrono_boost] run tag @s remove ec.sp_chrono_boost
execute if entity @s[tag=ec.sp_charging] run tag @s remove ec.sp_charging
execute if entity @s[tag=ec.sp_titan_charging] run tag @s remove ec.sp_titan_charging
execute if entity @s[tag=ec.sp_golden_glow] run function evercraft:spirit/abilities/pharaoh_fist/golden_glow_off
execute if entity @s[tag=ec.sp_sanctuary_zone] run tag @s remove ec.sp_sanctuary_zone
execute if entity @s[tag=ec.sp_surge_charging] run tag @s remove ec.sp_surge_charging
execute if entity @s[tag=ec.sp_rift_active] run tag @s remove ec.sp_rift_active
execute if entity @s[tag=ec.sp_phase_active] run tag @s remove ec.sp_phase_active
execute if entity @s[tag=ec.sp_beast_active] run tag @s remove ec.sp_beast_active
execute if entity @s[tag=ec.sp_fused] run function evercraft:spirit/abilities/whispering_spear/fusion_expire
execute if entity @s[tag=ec.sp_judging] run tag @s remove ec.sp_judging

# Soulstring
# (rift markers and singularity cleaned up below)

# Wyrmcleaver
execute if entity @s[tag=ec.sp_aegis_active] run tag @s remove ec.sp_aegis_active
execute if entity @s[tag=ec.sp_dh_charging] run tag @s remove ec.sp_dh_charging

# Bulwark Shield
execute if entity @s[tag=ec.sp_wall_active] run effect clear @s slowness
execute if entity @s[tag=ec.sp_guarding] run function evercraft:spirit/abilities/bulwark_shield/guard_end
tag @e[tag=ec.sp_taunted] remove ec.sp_taunted
scoreboard players set @s ec.sp_wall_absorb 0

# Kill any active zone markers
kill @e[tag=ec.sp_maelstrom_marker]
kill @e[tag=ec.sp_sanctuary_marker]
kill @e[tag=ec.sp_rift]
kill @e[tag=ec.sp_fortress_marker]
kill @e[tag=ec.sp_beast]
kill @e[tag=ec.sp_aegis]
kill @e[tag=ec.sp_singularity]

# Also deactivate Dual Swordsman if it was active via spirit weapon
execute if score @s ec.ds_active matches 1 run function evercraft:dual_swordsman/remove
