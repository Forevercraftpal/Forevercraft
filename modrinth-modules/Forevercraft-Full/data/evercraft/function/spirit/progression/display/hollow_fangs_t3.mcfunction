# Hollow Fangs — Tier 3 (Uncommon → Rare) Objective Display
# 1. Kill 500 mobs
execute if score @s ec.sp_kills matches 500.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 500 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/500)","color":"dark_gray"}]
execute unless score @s ec.sp_kills matches 500.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 500 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/500)","color":"dark_gray"}]
# 2. Land 100 backstab kills
execute if score @s ec.sp_stealth_kills matches 100.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Land 100 backstab kills ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_stealth_kills"}},{"text":"/100)","color":"dark_gray"}]
execute unless score @s ec.sp_stealth_kills matches 100.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Land 100 backstab kills ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_stealth_kills"}},{"text":"/100)","color":"dark_gray"}]
# 3. Complete dungeon floor 5
execute if score @s ec.sp_floor_max matches 5.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Complete dungeon floor 5 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_floor_max"}},{"text":"/5)","color":"dark_gray"}]
execute unless score @s ec.sp_floor_max matches 5.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Complete dungeon floor 5 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_floor_max"}},{"text":"/5)","color":"dark_gray"}]
# 4. Kill 3 mob types in combo
execute if score @s ec.sp_combo_variety matches 3.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 3 mob types in combo ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_combo_variety"}},{"text":"/3)","color":"dark_gray"}]
execute unless score @s ec.sp_combo_variety matches 3.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 3 mob types in combo ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_combo_variety"}},{"text":"/3)","color":"dark_gray"}]
# 5. Reach Stealth level 5
execute if score @s adv.stealth matches 5.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Reach Stealth level 5 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"adv.stealth"}},{"text":"/5)","color":"dark_gray"}]
execute unless score @s adv.stealth matches 5.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Reach Stealth level 5 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"adv.stealth"}},{"text":"/5)","color":"dark_gray"}]
# 6. Perfect stealth kill (flag)
execute if score @s ec.sp_perfect_stealth matches 1.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Perfect stealth kill ","color":"gray"},{"text":"(done)","color":"dark_gray"}]
execute unless score @s ec.sp_perfect_stealth matches 1.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Perfect stealth kill ","color":"gray"},{"text":"(not done)","color":"dark_gray"}]