# Hollow Fangs — Tier 7 (Mythical → Spirit) Objective Display
# 1. Kill 50,000 mobs
execute if score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 50,000 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/50000)","color":"dark_gray"}]
execute unless score @s ec.sp_kills matches 50000.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 50,000 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/50000)","color":"dark_gray"}]
# 2. Kill 10,000 stealthed
execute if score @s ec.sp_stealth_kills matches 10000.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 10,000 while stealthed ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_stealth_kills"}},{"text":"/10000)","color":"dark_gray"}]
execute unless score @s ec.sp_stealth_kills matches 10000.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 10,000 while stealthed ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_stealth_kills"}},{"text":"/10000)","color":"dark_gray"}]
# 3. All 14 raid bosses (flag)
execute if score @s ec.sp_all_bosses matches 1.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Defeat all 14 raid bosses ","color":"gray"},{"text":"(done)","color":"dark_gray"}]
execute unless score @s ec.sp_all_bosses matches 1.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Defeat all 14 raid bosses ","color":"gray"},{"text":"(not done)","color":"dark_gray"}]
# 4. Castle floor 50
execute if score @s ic.record matches 50.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Reach Castle floor 50 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ic.record"}},{"text":"/50)","color":"dark_gray"}]
execute unless score @s ic.record matches 50.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Reach Castle floor 50 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ic.record"}},{"text":"/50)","color":"dark_gray"}]
# 5. Max mastery
execute if score @s ec.sp_mastery matches 100000.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Reach max mastery ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_mastery"}},{"text":"/100000)","color":"dark_gray"}]
execute unless score @s ec.sp_mastery matches 100000.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Reach max mastery ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_mastery"}},{"text":"/100000)","color":"dark_gray"}]
# 6. All glyphs at Exquisite (flag)
execute if score @s ec.sp_glyphs_exq matches 1.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"All glyphs at Exquisite ","color":"gray"},{"text":"(done)","color":"dark_gray"}]
execute unless score @s ec.sp_glyphs_exq matches 1.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"All glyphs at Exquisite ","color":"gray"},{"text":"(not done)","color":"dark_gray"}]
# 7. Solo the Hollow Sovereign (flag)
execute if score @s ec.sp_solo_hollow matches 1.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Solo the Hollow Sovereign ","color":"gray"},{"text":"(done)","color":"dark_gray"}]
execute unless score @s ec.sp_solo_hollow matches 1.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Solo the Hollow Sovereign ","color":"gray"},{"text":"(not done)","color":"dark_gray"}]
# 8. 100 dungeon floors
execute if score @s ec.sp_total_floors matches 100.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Complete 100 dungeon floors ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_total_floors"}},{"text":"/100)","color":"dark_gray"}]
execute unless score @s ec.sp_total_floors matches 100.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Complete 100 dungeon floors ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_total_floors"}},{"text":"/100)","color":"dark_gray"}]
# 9. Spirit Tome page 50
execute if score @s ec.sq_part matches 50.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Reach Spirit Tome page 50 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sq_part"}},{"text":"/50)","color":"dark_gray"}]
execute unless score @s ec.sq_part matches 50.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Reach Spirit Tome page 50 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sq_part"}},{"text":"/50)","color":"dark_gray"}]
# 10. 50-kill streak
execute if score @s ec.sp_kill_streak matches 50.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Achieve a 50-kill streak ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kill_streak"}},{"text":"/50)","color":"dark_gray"}]
execute unless score @s ec.sp_kill_streak matches 50.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Achieve a 50-kill streak ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kill_streak"}},{"text":"/50)","color":"dark_gray"}]