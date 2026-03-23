# Set #am_max_level based on armor tier (read from armor_mastery storage)
scoreboard players set #am_max_level ec.var 1
execute if data storage evercraft:armor_mastery {item:{tier:"uncommon"}} run scoreboard players set #am_max_level ec.var 2
execute if data storage evercraft:armor_mastery {item:{tier:"rare"}} run scoreboard players set #am_max_level ec.var 3
execute if data storage evercraft:armor_mastery {item:{tier:"ornate"}} run scoreboard players set #am_max_level ec.var 4
execute if data storage evercraft:armor_mastery {item:{tier:"exquisite"}} run scoreboard players set #am_max_level ec.var 5
execute if data storage evercraft:armor_mastery {item:{tier:"mythical"}} run scoreboard players set #am_max_level ec.var 7
