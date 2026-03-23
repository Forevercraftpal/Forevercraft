# World Boss — Apply Seasonal Modifiers at Spawn
# Called after setup_boss, as the boss entity

# Autumn: +10% attack knockback
execute if score #wb_season ec.var matches 0 run attribute @s attack_knockback modifier add evercraft:boss/seasonal 0.5 add_value

# Winter: no spawn modifier (frost burst handles the penalty)

# Spring: +2 armor (nature's protection)
execute if score #wb_season ec.var matches 2 run attribute @s armor modifier add evercraft:boss/seasonal 2 add_value

# Summer: fire resistance for boss (immune to own fire)
execute if score #wb_season ec.var matches 3 run effect give @s fire_resistance infinite 0 true

# Seasonal announcement is handled by setup_boss (macro with boss name)
