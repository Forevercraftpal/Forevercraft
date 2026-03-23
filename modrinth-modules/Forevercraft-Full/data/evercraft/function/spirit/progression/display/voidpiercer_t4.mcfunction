# Voidpiercer — Tier 4 (Rare → Ornate) Objective Display
# 1. Kill 2,000 mobs
execute if score @s ec.sp_kills matches 2000.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 2,000 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/2000)","color":"dark_gray"}]
execute unless score @s ec.sp_kills matches 2000.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 2,000 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/2000)","color":"dark_gray"}]
# 2. Kill 500 at range
execute if score @s ec.sp_range_kills matches 500.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 500 at range ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_range_kills"}},{"text":"/500)","color":"dark_gray"}]
execute unless score @s ec.sp_range_kills matches 500.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 500 at range ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_range_kills"}},{"text":"/500)","color":"dark_gray"}]
# 3. Use Rift Bolt 50 times
execute if score @s ec.sp_ability1_uses matches 50.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Use Rift Bolt 50 times ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_ability1_uses"}},{"text":"/50)","color":"dark_gray"}]
execute unless score @s ec.sp_ability1_uses matches 50.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Use Rift Bolt 50 times ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_ability1_uses"}},{"text":"/50)","color":"dark_gray"}]
# 4. Dungeon floor 7
execute if score @s ec.sp_floor_max matches 7.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Complete dungeon floor 7 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_floor_max"}},{"text":"/7)","color":"dark_gray"}]
execute unless score @s ec.sp_floor_max matches 7.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Complete dungeon floor 7 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_floor_max"}},{"text":"/7)","color":"dark_gray"}]
# 5. Castle floor 10
execute if score @s ic.record matches 10.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Reach Castle floor 10 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ic.record"}},{"text":"/10)","color":"dark_gray"}]
execute unless score @s ic.record matches 10.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Reach Castle floor 10 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ic.record"}},{"text":"/10)","color":"dark_gray"}]
# 6. Kill 200 endermen
execute if score @s ec.sp_enderman_kills matches 200.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 200 endermen ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_enderman_kills"}},{"text":"/200)","color":"dark_gray"}]
execute unless score @s ec.sp_enderman_kills matches 200.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 200 endermen ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_enderman_kills"}},{"text":"/200)","color":"dark_gray"}]
# 7. Complete 10 quests
execute if score @s ec.sp_quests_done matches 10.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Complete 10 quests ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_quests_done"}},{"text":"/10)","color":"dark_gray"}]
execute unless score @s ec.sp_quests_done matches 10.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Complete 10 quests ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_quests_done"}},{"text":"/10)","color":"dark_gray"}]