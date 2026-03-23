# Buddy Ability — War Companion (Tier 4+)
# +50% damage and permanent Resistance I on buddy
# Applied as attribute modifier + effect

# Resistance I on buddy (refreshed)
execute as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..32,limit=1] run effect give @s resistance 5 0 true

# Attack damage modifier (add if not present — +50%)
execute as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..32,limit=1,tag=!ec.bd_wc_applied] run attribute @s attack_damage modifier add evercraft:buddy_war_companion 0.5 add_multiplied_base
execute as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..32,limit=1,tag=!ec.bd_wc_applied] run tag @s add ec.bd_wc_applied
