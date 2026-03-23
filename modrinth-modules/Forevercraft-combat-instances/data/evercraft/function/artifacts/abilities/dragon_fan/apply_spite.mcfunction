# Dragon's Spite - Damage boost based on missing health
# Max +25% damage at very low HP (scales linearly)

# Get current and max health
execute store result score @s ec.health run data get entity @s Health 100
execute store result score @s ec.max_health run attribute @s max_health get 100

# Calculate health percentage (health * 100 / max_health)
scoreboard players operation @s ec.health_pct = @s ec.health
scoreboard players operation @s ec.health_pct *= #100 ec.const
scoreboard players operation @s ec.health_pct /= @s ec.max_health

# Dragon's Spite activates below 75% HP
# At 75% HP: +0% damage
# At 50% HP: +12.5% damage
# At 25% HP: +25% damage
# Formula: bonus = (75 - health_pct) * 0.5, capped at 25%

# If health >= 75%, remove any spite bonus
execute if score @s ec.health_pct matches 75.. run attribute @s attack_damage modifier remove evercraft:dragons_spite

# If health < 75%, apply scaled bonus
execute if score @s ec.health_pct matches ..74 run function evercraft:artifacts/abilities/dragon_fan/calculate_spite_bonus
