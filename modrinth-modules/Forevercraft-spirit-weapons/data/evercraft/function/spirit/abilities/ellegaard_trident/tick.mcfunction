# Soul Piercer — Per-Tick Processing (Javelin)
# Run as @s at @s when holding spirit weapon ID 8

# === WATER PASSIVE: +50% damage in water ===
# Check if player is in water — apply/remove attack damage modifier
execute if predicate evercraft:in_water unless entity @s[tag=ec.sp_water_boost] run attribute @s attack_damage modifier add evercraft:water_boost 0.5 add_multiplied_base
execute if predicate evercraft:in_water unless entity @s[tag=ec.sp_water_boost] run tag @s add ec.sp_water_boost
execute unless predicate evercraft:in_water if entity @s[tag=ec.sp_water_boost] run attribute @s attack_damage modifier remove evercraft:water_boost
execute unless predicate evercraft:in_water if entity @s[tag=ec.sp_water_boost] run tag @s remove ec.sp_water_boost

# === MAELSTROM ACTIVE ===
# Maelstrom uses ec.sp_timer (globally decremented in spirit/tick)
scoreboard players operation #owner_check ec.temp = @s ec.sp_uid
execute if entity @s[tag=ec.sp_maelstrom_active] as @e[tag=ec.sp_maelstrom_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run function evercraft:spirit/abilities/ellegaard_trident/maelstrom_tick

# Maelstrom expire
execute if entity @s[tag=ec.sp_maelstrom_active,scores={ec.sp_timer=..0}] run function evercraft:spirit/abilities/ellegaard_trident/maelstrom_end

# === POSEIDON'S WRATH STATE MACHINE ===
# State uses ec.sp_state (decremented here — NOT global)
execute if entity @s[tag=ec.sp_poseidon_charging] run scoreboard players remove @s ec.sp_state 1

# Channel VFX while charging
execute if entity @s[tag=ec.sp_poseidon_charging,scores={ec.sp_state=1..}] run function evercraft:spirit/abilities/ellegaard_trident/poseidon_channel

# Channel complete — unleash
execute if entity @s[tag=ec.sp_poseidon_charging,scores={ec.sp_state=..0}] run function evercraft:spirit/abilities/ellegaard_trident/poseidon_strike
