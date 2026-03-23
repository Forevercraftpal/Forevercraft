# Voidpiercer — Phase Shot End
# Phase duration expired, remove state

# Remove phase tag
tag @s remove ec.sp_phase_active

# Reset state
scoreboard players set @s ec.sp_state 0
scoreboard players set @s ec.sp_charges 0

# VFX
particle poof ~ ~1 ~ 0.4 0.6 0.4 0.05 12
particle reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.2 8

# SFX
playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 0.8 1.5

title @s actionbar [{"text":"Phase faded...","color":"gray","italic":true}]
