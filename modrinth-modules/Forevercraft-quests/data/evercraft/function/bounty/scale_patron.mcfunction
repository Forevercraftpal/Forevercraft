# Bounty — Scale patron stats by tier
# Uses ec.bnt_tier scoreboard on @s (the player) to determine tier

# Uncommon: 80 HP, moderate stats
execute if score @s ec.bnt_tier matches 2 as @e[tag=ec.bounty_target,limit=1,sort=nearest] run attribute @s max_health modifier add evercraft:bounty/scale 3.0 add_multiplied_total
execute if score @s ec.bnt_tier matches 2 as @e[tag=ec.bounty_target,limit=1,sort=nearest] run attribute @s attack_damage modifier add evercraft:bounty/scale 1.0 add_multiplied_total
execute if score @s ec.bnt_tier matches 2 as @e[tag=ec.bounty_target,limit=1,sort=nearest] run attribute @s armor modifier add evercraft:bounty/scale 5 add_value

# Rare: 120 HP
execute if score @s ec.bnt_tier matches 3 as @e[tag=ec.bounty_target,limit=1,sort=nearest] run attribute @s max_health modifier add evercraft:bounty/scale 5.0 add_multiplied_total
execute if score @s ec.bnt_tier matches 3 as @e[tag=ec.bounty_target,limit=1,sort=nearest] run attribute @s attack_damage modifier add evercraft:bounty/scale 1.5 add_multiplied_total
execute if score @s ec.bnt_tier matches 3 as @e[tag=ec.bounty_target,limit=1,sort=nearest] run attribute @s armor modifier add evercraft:bounty/scale 8 add_value
execute if score @s ec.bnt_tier matches 3 as @e[tag=ec.bounty_target,limit=1,sort=nearest] run attribute @s knockback_resistance modifier add evercraft:bounty/scale 0.3 add_value

# Ornate: 160 HP
execute if score @s ec.bnt_tier matches 4 as @e[tag=ec.bounty_target,limit=1,sort=nearest] run attribute @s max_health modifier add evercraft:bounty/scale 7.0 add_multiplied_total
execute if score @s ec.bnt_tier matches 4 as @e[tag=ec.bounty_target,limit=1,sort=nearest] run attribute @s attack_damage modifier add evercraft:bounty/scale 2.0 add_multiplied_total
execute if score @s ec.bnt_tier matches 4 as @e[tag=ec.bounty_target,limit=1,sort=nearest] run attribute @s armor modifier add evercraft:bounty/scale 12 add_value
execute if score @s ec.bnt_tier matches 4 as @e[tag=ec.bounty_target,limit=1,sort=nearest] run attribute @s knockback_resistance modifier add evercraft:bounty/scale 0.5 add_value

# Exquisite: 250 HP
execute if score @s ec.bnt_tier matches 5 as @e[tag=ec.bounty_target,limit=1,sort=nearest] run attribute @s max_health modifier add evercraft:bounty/scale 11.5 add_multiplied_total
execute if score @s ec.bnt_tier matches 5 as @e[tag=ec.bounty_target,limit=1,sort=nearest] run attribute @s attack_damage modifier add evercraft:bounty/scale 3.0 add_multiplied_total
execute if score @s ec.bnt_tier matches 5 as @e[tag=ec.bounty_target,limit=1,sort=nearest] run attribute @s armor modifier add evercraft:bounty/scale 16 add_value
execute if score @s ec.bnt_tier matches 5 as @e[tag=ec.bounty_target,limit=1,sort=nearest] run attribute @s knockback_resistance modifier add evercraft:bounty/scale 0.8 add_value

# Delayed health sync — 2 tick delay for attribute modifiers to fully apply (same as world boss pattern)
tag @e[tag=ec.bounty_target,limit=1,sort=nearest] add ec.bnt_init
schedule function evercraft:bounty/sync_hp 2t
