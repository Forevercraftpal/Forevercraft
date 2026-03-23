# Ability Harmonization - Apply final compounded effects for @s
# ec.h_<effect> now contains the final level (1-5) after compounding
# Only applies if level 2+ (single sources handled by their own items)

# === STRENGTH ===
execute if score @s ec.h_str matches 2 run effect give @s strength 30 1 true
execute if score @s ec.h_str matches 3 run effect give @s strength 30 2 true
execute if score @s ec.h_str matches 4 run effect give @s strength 30 3 true
execute if score @s ec.h_str matches 5 run effect give @s strength 30 4 true

# === SPEED ===
execute if score @s ec.h_speed matches 2 run effect give @s speed 30 1 true
execute if score @s ec.h_speed matches 3 run effect give @s speed 30 2 true
execute if score @s ec.h_speed matches 4 run effect give @s speed 30 3 true
execute if score @s ec.h_speed matches 5 run effect give @s speed 30 4 true

# === HASTE ===
execute if score @s ec.h_haste matches 2 run effect give @s haste 30 1 true
execute if score @s ec.h_haste matches 3 run effect give @s haste 30 2 true
execute if score @s ec.h_haste matches 4 run effect give @s haste 30 3 true
execute if score @s ec.h_haste matches 5 run effect give @s haste 30 4 true

# === RESISTANCE (cap at IV = 80% DR, level 5 would be 100% = invincible) ===
execute if score @s ec.h_resist matches 2 run effect give @s resistance 30 1 true
execute if score @s ec.h_resist matches 3 run effect give @s resistance 30 2 true
execute if score @s ec.h_resist matches 4.. run effect give @s resistance 30 3 true

# === JUMP BOOST ===
execute if score @s ec.h_jump matches 2 run effect give @s jump_boost 30 1 true
execute if score @s ec.h_jump matches 3 run effect give @s jump_boost 30 2 true
execute if score @s ec.h_jump matches 4 run effect give @s jump_boost 30 3 true
execute if score @s ec.h_jump matches 5 run effect give @s jump_boost 30 4 true

# === REGENERATION ===
execute if score @s ec.h_regen matches 2 run effect give @s regeneration 30 1 true
execute if score @s ec.h_regen matches 3 run effect give @s regeneration 30 2 true
execute if score @s ec.h_regen matches 4 run effect give @s regeneration 30 3 true
execute if score @s ec.h_regen matches 5 run effect give @s regeneration 30 4 true
