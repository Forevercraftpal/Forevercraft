# Hollow Fangs — Tier 5 (Ornate → Exquisite) Objective Display
# 1. Kill 5,000 mobs
execute if score @s ec.sp_kills matches 5000.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 5,000 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/5000)","color":"dark_gray"}]
execute unless score @s ec.sp_kills matches 5000.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 5,000 mobs ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kills"}},{"text":"/5000)","color":"dark_gray"}]
# 2. Use Shadow Step 200 times
execute if score @s ec.sp_ability1_uses matches 200.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Use Shadow Step 200 times ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_ability1_uses"}},{"text":"/200)","color":"dark_gray"}]
execute unless score @s ec.sp_ability1_uses matches 200.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Use Shadow Step 200 times ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_ability1_uses"}},{"text":"/200)","color":"dark_gray"}]
# 3. Kill 2,000 stealthed
execute if score @s ec.sp_stealth_kills matches 2000.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 2,000 while stealthed ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_stealth_kills"}},{"text":"/2000)","color":"dark_gray"}]
execute unless score @s ec.sp_stealth_kills matches 2000.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 2,000 while stealthed ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_stealth_kills"}},{"text":"/2000)","color":"dark_gray"}]
# 4. Complete 50 dungeon floors
execute if score @s ec.sp_total_floors matches 50.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Complete 50 dungeon floors ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_total_floors"}},{"text":"/50)","color":"dark_gray"}]
execute unless score @s ec.sp_total_floors matches 50.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Complete 50 dungeon floors ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_total_floors"}},{"text":"/50)","color":"dark_gray"}]
# 5. Reach Castle floor 20
execute if score @s ic.record matches 20.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Reach Castle floor 20 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ic.record"}},{"text":"/20)","color":"dark_gray"}]
execute unless score @s ic.record matches 20.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Reach Castle floor 20 ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ic.record"}},{"text":"/20)","color":"dark_gray"}]
# 6. Bind 5 runes
execute if score @s ach.runes_forged matches 5.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Bind 5 runes ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ach.runes_forged"}},{"text":"/5)","color":"dark_gray"}]
execute unless score @s ach.runes_forged matches 5.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Bind 5 runes ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ach.runes_forged"}},{"text":"/5)","color":"dark_gray"}]
# 7. Kill 3 raid bosses
execute if score @s ec.sp_bosses_killed matches 3.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Kill 3 raid bosses ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_bosses_killed"}},{"text":"/3)","color":"dark_gray"}]
execute unless score @s ec.sp_bosses_killed matches 3.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Kill 3 raid bosses ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_bosses_killed"}},{"text":"/3)","color":"dark_gray"}]
# 8. 20-kill streak
execute if score @s ec.sp_kill_streak matches 20.. run tellraw @s [{"text":"  ✓ ","color":"green"},{"text":"Achieve a 20-kill streak ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kill_streak"}},{"text":"/20)","color":"dark_gray"}]
execute unless score @s ec.sp_kill_streak matches 20.. run tellraw @s [{"text":"  ✗ ","color":"red"},{"text":"Achieve a 20-kill streak ","color":"gray"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.sp_kill_streak"}},{"text":"/20)","color":"dark_gray"}]