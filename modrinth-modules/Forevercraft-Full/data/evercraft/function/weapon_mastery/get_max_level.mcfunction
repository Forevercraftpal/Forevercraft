# Set #wm_max_level based on weapon tier (read from storage)
# Default = 1 (common), each tier overrides
scoreboard players set #wm_max_level ec.var 1
execute if data storage evercraft:weapon_mastery {item:{tier:"uncommon"}} run scoreboard players set #wm_max_level ec.var 2
execute if data storage evercraft:weapon_mastery {item:{tier:"rare"}} run scoreboard players set #wm_max_level ec.var 3
execute if data storage evercraft:weapon_mastery {item:{tier:"ornate"}} run scoreboard players set #wm_max_level ec.var 4
execute if data storage evercraft:weapon_mastery {item:{tier:"exquisite"}} run scoreboard players set #wm_max_level ec.var 5
execute if data storage evercraft:weapon_mastery {item:{tier:"mythical"}} run scoreboard players set #wm_max_level ec.var 7
