# Voidpiercer — Tier 7 (Mythical → Spirit) Objective Display
# 1. Kill 50,000 mobs
execute if score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 50,000 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/50000)","color":"dark_gray"}]
execute unless score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 50,000 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/50000)","color":"dark_gray"}]
# 2. Kill 10,000 at range
execute if score @s ec.sp_range_kills matches 10000.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 10,000 at range ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_range_kills"}},{"text":"/10000)","color":"dark_gray"}]
execute unless score @s ec.sp_range_kills matches 10000.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 10,000 at range ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_range_kills"}},{"text":"/10000)","color":"dark_gray"}]
# 3. All 14 bosses (flag)
execute if score @s ec.sp_all_bosses matches 1.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Defeat all 14 raid bosses ","color":"gray"},{"text":"(done)","color":"dark_gray"}]
execute unless score @s ec.sp_all_bosses matches 1.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Defeat all 14 raid bosses ","color":"gray"},{"text":"(not done)","color":"dark_gray"}]
# 4. Castle floor 50
execute if score @s ic.record matches 50.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Reach Castle floor 50 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ic.record"}},{"text":"/50)","color":"dark_gray"}]
execute unless score @s ic.record matches 50.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Reach Castle floor 50 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ic.record"}},{"text":"/50)","color":"dark_gray"}]
# 5. Max mastery
execute if score @s ec.sp_mastery matches 100000.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Reach max mastery ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_mastery"}},{"text":"/100000)","color":"dark_gray"}]
execute unless score @s ec.sp_mastery matches 100000.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Reach max mastery ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_mastery"}},{"text":"/100000)","color":"dark_gray"}]
# 6. Glyphs at Exquisite (flag)
execute if score @s ec.sp_glyphs_exq matches 1.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"All glyphs at Exquisite ","color":"gray"},{"text":"(done)","color":"dark_gray"}]
execute unless score @s ec.sp_glyphs_exq matches 1.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"All glyphs at Exquisite ","color":"gray"},{"text":"(not done)","color":"dark_gray"}]
# 7. 3 ranged-only boss kills
execute if score @s ec.sp_ranged_boss matches 3.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"3 ranged-only boss kills ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_ranged_boss"}},{"text":"/3)","color":"dark_gray"}]
execute unless score @s ec.sp_ranged_boss matches 3.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"3 ranged-only boss kills ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_ranged_boss"}},{"text":"/3)","color":"dark_gray"}]
# 8. Spirit Tome page 50
execute if score @s ec.sq_part matches 50.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Reach Spirit Tome page 50 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sq_part"}},{"text":"/50)","color":"dark_gray"}]
execute unless score @s ec.sq_part matches 50.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Reach Spirit Tome page 50 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sq_part"}},{"text":"/50)","color":"dark_gray"}]
# 9. All prestiges (flag)
execute if score @s ec.sp_all_prestige matches 1.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Complete all prestiges ","color":"gray"},{"text":"(done)","color":"dark_gray"}]
execute unless score @s ec.sp_all_prestige matches 1.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Complete all prestiges ","color":"gray"},{"text":"(not done)","color":"dark_gray"}]
# 10. 500 snipe kills
execute if score @s ec.sp_snipe_kills matches 500.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Land 500 snipe kills ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_snipe_kills"}},{"text":"/500)","color":"dark_gray"}]
execute unless score @s ec.sp_snipe_kills matches 500.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Land 500 snipe kills ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_snipe_kills"}},{"text":"/500)","color":"dark_gray"}]