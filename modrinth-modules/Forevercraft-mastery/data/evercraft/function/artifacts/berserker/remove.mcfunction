# Berserker Cleanup — Remove all bonuses/penalties when unequipping
# Run as player who is ec.bk_active but no longer dual-wielding axes

# Remove tag
tag @s remove ec.bk_active

# === REMOVE ATTRIBUTE MODIFIERS ===
attribute @s armor modifier remove evercraft:berserker_armor
attribute @s max_health modifier remove evercraft:berserker_health
attribute @s attack_speed modifier remove evercraft:berserker_speed

# === FORCE-END RAGE IF ACTIVE ===
execute if score @s ec.bk_rage matches 1.. run function evercraft:artifacts/berserker/deactivate_rage

# Clear low-HP haste (2-second duration expires naturally, but clear for instant cleanup)
effect clear @s haste

# Reset scores
scoreboard players set @s ec.bk_tier 0
scoreboard players set @s ec.bk_rage 0
scoreboard players set @s ec.bk_swing 0
