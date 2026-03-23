# Striker — Impact Strike (Right-Click Activation)
# Triggered by using_item: mace (striker mode) or shield+sneak (sentinel mode)

# Re-arm both advancements
advancement revoke @s only evercraft:artifacts/striker/impact_use_trigger
advancement revoke @s only evercraft:artifacts/striker/impact_use_sentinel_trigger

# Verify still holding striker mace and is active
execute unless entity @s[tag=ec.sk_active] run return 0
execute unless items entity @s weapon.mainhand mace[custom_data~{striker:true}] run return 0

# Need at least 25 Impact
execute unless score @s ec.sk_impact matches 25.. run return 0

# Release Impact
function evercraft:artifacts/striker/impact_strike

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
