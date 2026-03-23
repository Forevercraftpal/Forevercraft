# Friend Title — Try to evolve a title that's been held 30+ days
# Reads temp.evo_list[0].title, modifies in-place if evolvable
# Sets #fr_evo_this ec.temp = 1 if evolved

# Copy current title to temp for safe comparison
data modify storage evercraft:friends temp.evo_check_title set from storage evercraft:friends temp.evo_list[0].title

# Check each evolvable title and upgrade
# Using temp.evo_check_title for comparison avoids false matches from other array elements
execute if data storage evercraft:friends {temp:{evo_check_title:"brother"}} run data modify storage evercraft:friends temp.evo_list[0].title set value "kinsman"
execute if data storage evercraft:friends {temp:{evo_check_title:"brother"}} run scoreboard players set #fr_evo_this ec.temp 1

execute if data storage evercraft:friends {temp:{evo_check_title:"sister"}} run data modify storage evercraft:friends temp.evo_list[0].title set value "kinswoman"
execute if data storage evercraft:friends {temp:{evo_check_title:"sister"}} run scoreboard players set #fr_evo_this ec.temp 1

execute if data storage evercraft:friends {temp:{evo_check_title:"mother"}} run data modify storage evercraft:friends temp.evo_list[0].title set value "matriarch"
execute if data storage evercraft:friends {temp:{evo_check_title:"mother"}} run scoreboard players set #fr_evo_this ec.temp 1

execute if data storage evercraft:friends {temp:{evo_check_title:"father"}} run data modify storage evercraft:friends temp.evo_list[0].title set value "patriarch"
execute if data storage evercraft:friends {temp:{evo_check_title:"father"}} run scoreboard players set #fr_evo_this ec.temp 1

execute if data storage evercraft:friends {temp:{evo_check_title:"grandmother"}} run data modify storage evercraft:friends temp.evo_list[0].title set value "elder_matriarch"
execute if data storage evercraft:friends {temp:{evo_check_title:"grandmother"}} run scoreboard players set #fr_evo_this ec.temp 1

execute if data storage evercraft:friends {temp:{evo_check_title:"grandfather"}} run data modify storage evercraft:friends temp.evo_list[0].title set value "elder_patriarch"
execute if data storage evercraft:friends {temp:{evo_check_title:"grandfather"}} run scoreboard players set #fr_evo_this ec.temp 1

execute if data storage evercraft:friends {temp:{evo_check_title:"cousin"}} run data modify storage evercraft:friends temp.evo_list[0].title set value "blood_kin"
execute if data storage evercraft:friends {temp:{evo_check_title:"cousin"}} run scoreboard players set #fr_evo_this ec.temp 1

execute if data storage evercraft:friends {temp:{evo_check_title:"uncle"}} run data modify storage evercraft:friends temp.evo_list[0].title set value "guardian"
execute if data storage evercraft:friends {temp:{evo_check_title:"uncle"}} run scoreboard players set #fr_evo_this ec.temp 1

execute if data storage evercraft:friends {temp:{evo_check_title:"aunt"}} run data modify storage evercraft:friends temp.evo_list[0].title set value "warden"
execute if data storage evercraft:friends {temp:{evo_check_title:"aunt"}} run scoreboard players set #fr_evo_this ec.temp 1

execute if data storage evercraft:friends {temp:{evo_check_title:"spouse"}} run data modify storage evercraft:friends temp.evo_list[0].title set value "soulbound"
execute if data storage evercraft:friends {temp:{evo_check_title:"spouse"}} run scoreboard players set #fr_evo_this ec.temp 1
