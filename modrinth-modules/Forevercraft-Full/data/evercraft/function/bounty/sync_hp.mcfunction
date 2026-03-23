# Bounty — Delayed health sync (runs 2t after attribute scaling)
# Same pattern as world boss sync_hp — waits for modifiers to fully apply

# Primary: instant effects heal through the game engine
execute as @e[tag=ec.bounty_target,tag=ec.bnt_init] if entity @s[type=#minecraft:undead] run effect give @s instant_damage 1 10 true
execute as @e[tag=ec.bounty_target,tag=ec.bnt_init] unless entity @s[type=#minecraft:undead] run effect give @s instant_health 1 10 true

# Backup: set Health from max_health via storage (execute store to Health is unreliable)
execute as @e[tag=ec.bounty_target,tag=ec.bnt_init] store result storage evercraft:bounty temp_hp float 1 run attribute @s max_health get
execute as @e[tag=ec.bounty_target,tag=ec.bnt_init] run data modify entity @s Health set from storage evercraft:bounty temp_hp

# Remove init tag
tag @e[tag=ec.bounty_target,tag=ec.bnt_init] remove ec.bnt_init
