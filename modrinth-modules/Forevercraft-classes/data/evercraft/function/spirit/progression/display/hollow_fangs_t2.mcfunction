# Hollow Fangs — Tier 2 (Common → Uncommon) Objective Display
# 1. Kill 100 mobs
execute if score @s ec.sp_kills matches 100.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 100 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/100)","color":"dark_gray"}]
execute unless score @s ec.sp_kills matches 100.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 100 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/100)","color":"dark_gray"}]
# 2. Land 25 backstab kills
execute if score @s ec.sp_stealth_kills matches 25.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Land 25 backstab kills ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_stealth_kills"}},{"text":"/25)","color":"dark_gray"}]
execute unless score @s ec.sp_stealth_kills matches 25.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Land 25 backstab kills ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_stealth_kills"}},{"text":"/25)","color":"dark_gray"}]
# 3. Visit 5 different biomes
execute if score @s ec.sp_biomes matches 5.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Visit 5 biomes ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_biomes"}},{"text":"/5)","color":"dark_gray"}]
execute unless score @s ec.sp_biomes matches 5.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Visit 5 biomes ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_biomes"}},{"text":"/5)","color":"dark_gray"}]
# 4. Complete 1 dungeon run
execute if score @s ec.sp_dungeon_runs matches 1.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Complete 1 dungeon run ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_dungeon_runs"}},{"text":"/1)","color":"dark_gray"}]
execute unless score @s ec.sp_dungeon_runs matches 1.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Complete 1 dungeon run ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_dungeon_runs"}},{"text":"/1)","color":"dark_gray"}]
# 5. Survive 10 minutes in combat
execute if score @s ec.sp_survive matches 10.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Survive 10 minutes in combat ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_survive"}},{"text":"/10)","color":"dark_gray"}]
execute unless score @s ec.sp_survive matches 10.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Survive 10 minutes in combat ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_survive"}},{"text":"/10)","color":"dark_gray"}]