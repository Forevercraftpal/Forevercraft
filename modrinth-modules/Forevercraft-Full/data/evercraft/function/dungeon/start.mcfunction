# Dungeon Instance System — Start (Key Consumed)
# Called when player consumes a Dungeon Key (advancement reward)
# Validates conditions, then opens difficulty selection menu
# Run as: the player who consumed the key

# Revoke advancement for reuse
advancement revoke @s only evercraft:dungeon/use_key

# Check if a dungeon is already active — return the key if so
execute if score #dg_active ec.var matches 1 run loot give @s loot evercraft:dungeon/key
execute if score #dg_active ec.var matches 1 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"A dungeon is already in progress! Key returned.",color:"red"}]
execute if score #dg_active ec.var matches 1 run return 0

# Check if player is at a known structure OR an unknown structure with crate markers
scoreboard players set #dg_struct_id ec.var 0
execute at @s if predicate evercraft:dungeon/at_structure run function evercraft:dungeon/detect_structure

# If not at a known structure, check for unknown structure (passive scan tag)
execute if score #dg_struct_id ec.var matches 0 if entity @s[tag=dg.unknown_detected] run scoreboard players set #dg_struct_id ec.var 20
execute if score #dg_struct_id ec.var matches 0 if entity @s[tag=dg.unknown_detected] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Unknown Structure ",color:"#87CEEB",bold:true},{text:"— uncharted territory!",color:"gray",italic:true}]

# If neither known nor unknown structure — offer Infinite Castle instead
execute if score #dg_struct_id ec.var matches 0 run function evercraft:castle/start
execute if score #dg_struct_id ec.var matches 0 run return 0

# Daily Challenge check — bypass lockout if this structure is today's challenge
# Unknown structures (20) excluded — daily roll only targets known structures (1-19)
scoreboard players set #dg_is_daily ec.var 0
execute unless score #dg_struct_id ec.var matches 20 if score #dg_struct_id ec.var = #dc_struct ec.var run scoreboard players set #dg_is_daily ec.var 1
execute if score #dg_is_daily ec.var matches 1 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Daily Challenge! ",color:"gold",bold:true},{text:"Lockout bypassed — double rewards await!",color:"yellow"}]

# === LOCKOUT CHECKS ===
# Known structures (1-19): scoreboard-based 7-day lockout
# Unknown structures (20): position-based marker 2-week lockout
# Daily challenge structures: lockout bypassed entirely

# Known structure lockout (skip if daily challenge or unknown)
execute unless score #dg_is_daily ec.var matches 1 unless score #dg_struct_id ec.var matches 20 run function evercraft:dungeon/lockout/get
execute unless score #dg_is_daily ec.var matches 1 unless score #dg_struct_id ec.var matches 20 store result score #dg_now ec.var run time query gametime
execute unless score #dg_is_daily ec.var matches 1 unless score #dg_struct_id ec.var matches 20 run scoreboard players operation #dg_elapsed ec.var = #dg_now ec.var
execute unless score #dg_is_daily ec.var matches 1 unless score #dg_struct_id ec.var matches 20 run scoreboard players operation #dg_elapsed ec.var -= #dg_lockout_val ec.var
execute unless score #dg_is_daily ec.var matches 1 unless score #dg_struct_id ec.var matches 20 if score #dg_lockout_val ec.var matches 1.. if score #dg_elapsed ec.var matches ..503999 run loot give @s loot evercraft:dungeon/key
execute unless score #dg_is_daily ec.var matches 1 unless score #dg_struct_id ec.var matches 20 if score #dg_lockout_val ec.var matches 1.. if score #dg_elapsed ec.var matches ..503999 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"You must wait before running another dungeon here! Key returned.",color:"red"}]
execute unless score #dg_is_daily ec.var matches 1 unless score #dg_struct_id ec.var matches 20 if score #dg_lockout_val ec.var matches 1.. if score #dg_elapsed ec.var matches ..503999 run function evercraft:dungeon/lockout_info
execute unless score #dg_is_daily ec.var matches 1 unless score #dg_struct_id ec.var matches 20 if score #dg_lockout_val ec.var matches 1.. if score #dg_elapsed ec.var matches ..503999 run return 0

# Unknown structure lockout (2-week, position-based markers)
execute if score #dg_struct_id ec.var matches 20 at @s run function evercraft:dungeon/unknown/check_lockout
execute if score #dg_struct_id ec.var matches 20 if score #dg_unknown_locked ec.var matches 1 run loot give @s loot evercraft:dungeon/key
execute if score #dg_struct_id ec.var matches 20 if score #dg_unknown_locked ec.var matches 1 run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"This unknown site hasn't recovered yet — return in a fortnight! Key returned.",color:"red"}]
execute if score #dg_struct_id ec.var matches 20 if score #dg_unknown_locked ec.var matches 1 run return 0

# Check if player is in a GUI menu — return key
execute if entity @s[tag=Adv.InMenu] run loot give @s loot evercraft:dungeon/key
execute if entity @s[tag=Adv.InMenu] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Close your menu first! Key returned.",color:"red"}]
execute if entity @s[tag=Adv.InMenu] run return 0
execute if entity @s[tag=TX.InMenu] run loot give @s loot evercraft:dungeon/key
execute if entity @s[tag=TX.InMenu] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Close your menu first! Key returned.",color:"red"}]
execute if entity @s[tag=TX.InMenu] run return 0
execute if entity @s[tag=RF.InMenu] run loot give @s loot evercraft:dungeon/key
execute if entity @s[tag=RF.InMenu] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Close your menu first! Key returned.",color:"red"}]
execute if entity @s[tag=RF.InMenu] run return 0
execute if entity @s[tag=HS.InMenu] run loot give @s loot evercraft:dungeon/key
execute if entity @s[tag=HS.InMenu] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Close your menu first! Key returned.",color:"red"}]
execute if entity @s[tag=HS.InMenu] run return 0
execute if entity @s[tag=DG.InMenu] run loot give @s loot evercraft:dungeon/key
execute if entity @s[tag=DG.InMenu] run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"Close your menu first! Key returned.",color:"red"}]
execute if entity @s[tag=DG.InMenu] run return 0

# === 30-FLOOR DAILY LIMIT ===
execute if score @s ec.dg_floors_today matches 30.. run loot give @s loot evercraft:dungeon/key
execute if score @s ec.dg_floors_today matches 30.. run tellraw @s [{text:"[Dungeon] ",color:"dark_purple"},{text:"You've completed 30 dungeon floors today. Return tomorrow!",color:"red"}]
execute if score @s ec.dg_floors_today matches 30.. run return 0

# === OPEN DIFFICULTY SELECTION MENU ===
execute at @s run function evercraft:dungeon/menu/open
