# Dancer Removal — Clean up all dancer state
# Run as player who no longer has a dancer gauntlet in mainhand

# Clear evasion bonus tracker (bonus applied in evasion_check, not adv.evasion)
scoreboard players set @s ec.dn_evasion_add 0

# Remove dancer armor/health penalty
attribute @s armor modifier remove evercraft:dancer_penalty
attribute @s max_health modifier remove evercraft:dancer_penalty

# If flurry is active, force-end it
execute if score @s ec.dn_flurry matches 1.. run function evercraft:artifacts/dancer/deactivate_flurry

# Clear haste if it was from dual-wield passive
effect clear @s haste

# Reset state
scoreboard players set @s ec.dn_dual 0
scoreboard players set @s ec.dn_tier 0

# Remove tag
tag @s remove ec.dn_active
