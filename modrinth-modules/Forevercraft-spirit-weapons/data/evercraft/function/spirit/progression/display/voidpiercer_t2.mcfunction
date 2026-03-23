# Voidpiercer — Tier 2 (Common → Uncommon) Objective Display
# 1. Kill 100 mobs
execute if score @s ec.sp_kills matches 100.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 100 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/100)","color":"dark_gray"}]
execute unless score @s ec.sp_kills matches 100.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 100 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/100)","color":"dark_gray"}]
# 2. Kill 25 at 20+ range
execute if score @s ec.sp_range_kills matches 25.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 25 at 20+ block range ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_range_kills"}},{"text":"/25)","color":"dark_gray"}]
execute unless score @s ec.sp_range_kills matches 25.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 25 at 20+ block range ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_range_kills"}},{"text":"/25)","color":"dark_gray"}]
# 3. Visit the End dimension (flag)
execute if score @s ec.sp_biomes matches 1.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Visit the End dimension ","color":"gray"},{"text":"(done)","color":"dark_gray"}]
execute unless score @s ec.sp_biomes matches 1.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Visit the End dimension ","color":"gray"},{"text":"(not done)","color":"dark_gray"}]
# 4. Complete 1 dungeon
execute if score @s ec.sp_dungeon_runs matches 1.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Complete 1 dungeon ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_dungeon_runs"}},{"text":"/1)","color":"dark_gray"}]
execute unless score @s ec.sp_dungeon_runs matches 1.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Complete 1 dungeon ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_dungeon_runs"}},{"text":"/1)","color":"dark_gray"}]
# 5. Catch 10 fish
execute if score @s ach.fish_caught matches 10.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Catch 10 fish ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ach.fish_caught"}},{"text":"/10)","color":"dark_gray"}]
execute unless score @s ach.fish_caught matches 10.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Catch 10 fish ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ach.fish_caught"}},{"text":"/10)","color":"dark_gray"}]