# Voidpiercer — Tier 3 (Uncommon → Rare) Objective Display
# 1. Kill 500 mobs
execute if score @s ec.sp_kills matches 500.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 500 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/500)","color":"dark_gray"}]
execute unless score @s ec.sp_kills matches 500.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 500 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/500)","color":"dark_gray"}]
# 2. Kill 100 at 30+ range
execute if score @s ec.sp_range_kills matches 100.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 100 at 30+ block range ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_range_kills"}},{"text":"/100)","color":"dark_gray"}]
execute unless score @s ec.sp_range_kills matches 100.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 100 at 30+ block range ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_range_kills"}},{"text":"/100)","color":"dark_gray"}]
# 3. Dungeon floor 5
execute if score @s ec.sp_floor_max matches 5.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Complete dungeon floor 5 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_floor_max"}},{"text":"/5)","color":"dark_gray"}]
execute unless score @s ec.sp_floor_max matches 5.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Complete dungeon floor 5 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_floor_max"}},{"text":"/5)","color":"dark_gray"}]
# 4. Kill 50 endermen
execute if score @s ec.sp_enderman_kills matches 50.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 50 endermen ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_enderman_kills"}},{"text":"/50)","color":"dark_gray"}]
execute unless score @s ec.sp_enderman_kills matches 50.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 50 endermen ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_enderman_kills"}},{"text":"/50)","color":"dark_gray"}]
# 5. Dexterity level 5
execute if score @s adv.dexterity matches 5.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Reach Dexterity level 5 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"adv.dexterity"}},{"text":"/5)","color":"dark_gray"}]
execute unless score @s adv.dexterity matches 5.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Reach Dexterity level 5 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"adv.dexterity"}},{"text":"/5)","color":"dark_gray"}]
# 6. Rapid snipe (flag)
execute if score @s ec.sp_rapid_snipe matches 1.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Land a rapid snipe ","color":"gray"},{"text":"(done)","color":"dark_gray"}]
execute unless score @s ec.sp_rapid_snipe matches 1.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Land a rapid snipe ","color":"gray"},{"text":"(not done)","color":"dark_gray"}]