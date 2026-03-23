# Hollow Fangs — Tier 6 (Exquisite → Mythical) Objective Display
# 1. Kill 15,000 mobs
execute if score @s ec.sp_kills matches 15000.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 15,000 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/15000)","color":"dark_gray"}]
execute unless score @s ec.sp_kills matches 15000.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 15,000 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/15000)","color":"dark_gray"}]
# 2. Use Shadow Step 500 times
execute if score @s ec.sp_ability1_uses matches 500.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Use Shadow Step 500 times ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_ability1_uses"}},{"text":"/500)","color":"dark_gray"}]
execute unless score @s ec.sp_ability1_uses matches 500.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Use Shadow Step 500 times ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_ability1_uses"}},{"text":"/500)","color":"dark_gray"}]
# 3. Kill 5,000 stealthed
execute if score @s ec.sp_stealth_kills matches 5000.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 5,000 while stealthed ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_stealth_kills"}},{"text":"/5000)","color":"dark_gray"}]
execute unless score @s ec.sp_stealth_kills matches 5000.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 5,000 while stealthed ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_stealth_kills"}},{"text":"/5000)","color":"dark_gray"}]
# 4. Complete 100 dungeon floors
execute if score @s ec.sp_total_floors matches 100.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Complete 100 dungeon floors ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_total_floors"}},{"text":"/100)","color":"dark_gray"}]
execute unless score @s ec.sp_total_floors matches 100.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Complete 100 dungeon floors ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_total_floors"}},{"text":"/100)","color":"dark_gray"}]
# 5. Reach Castle floor 30
execute if score @s ic.record matches 30.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Reach Castle floor 30 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ic.record"}},{"text":"/30)","color":"dark_gray"}]
execute unless score @s ic.record matches 30.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Reach Castle floor 30 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ic.record"}},{"text":"/30)","color":"dark_gray"}]
# 6. Fill all glyph slots (flag)
execute if score @s ec.sp_glyphs_full matches 1.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Fill all glyph slots ","color":"gray"},{"text":"(done)","color":"dark_gray"}]
execute unless score @s ec.sp_glyphs_full matches 1.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Fill all glyph slots ","color":"gray"},{"text":"(not done)","color":"dark_gray"}]
# 7. Kill 8 raid bosses
execute if score @s ec.sp_bosses_killed matches 8.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 8 raid bosses ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_bosses_killed"}},{"text":"/8)","color":"dark_gray"}]
execute unless score @s ec.sp_bosses_killed matches 8.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 8 raid bosses ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_bosses_killed"}},{"text":"/8)","color":"dark_gray"}]
# 8. Solo a raid boss (flag)
execute if score @s ec.sp_solo_boss matches 1.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Solo a raid boss ","color":"gray"},{"text":"(done)","color":"dark_gray"}]
execute unless score @s ec.sp_solo_boss matches 1.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Solo a raid boss ","color":"gray"},{"text":"(not done)","color":"dark_gray"}]
# 9. Complete 50 quests
execute if score @s ec.sp_quests_done matches 50.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Complete 50 quests ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_quests_done"}},{"text":"/50)","color":"dark_gray"}]
execute unless score @s ec.sp_quests_done matches 50.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Complete 50 quests ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_quests_done"}},{"text":"/50)","color":"dark_gray"}]