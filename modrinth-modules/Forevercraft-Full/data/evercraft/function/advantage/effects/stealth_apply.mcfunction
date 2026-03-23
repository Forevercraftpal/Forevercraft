# Stealth Effect — +4% crouch speed per level (applied only while sneaking)
# Called from tick/main.mcfunction every 1s when player is sneaking

attribute @s movement_speed modifier remove evercraft:adv_stealth

# Calculate: level * 4 = percentage points, store as decimal
scoreboard players operation #sneak adv.temp = @s adv.stealth
scoreboard players operation #sneak adv.temp *= #4 adv.temp
execute store result storage evercraft:advantage sneak double 0.01 run scoreboard players get #sneak adv.temp

function evercraft:advantage/effects/apply_stealth with storage evercraft:advantage

# Stealth P2: Backstab — +50% attack damage while sneaking
execute if score @s adv.pres_stea matches 2.. run attribute @s attack_damage modifier remove evercraft:adv_pres_backstab
execute if score @s adv.pres_stea matches 2.. run attribute @s attack_damage modifier add evercraft:adv_pres_backstab 0.5 add_multiplied_base
