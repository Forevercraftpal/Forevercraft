# ============================================================
# Check for noon gift window (visual_time 6000-6500)
# Slow daylight: daytime IS visual_time (0-24000)
# Hero rank players receive gifts from villagers
# ============================================================

# Noon window = visual_time 6000-6500 (start of noon block)
execute if score #visual_time ec.var matches 6000..6500 unless score #quest_noon_gifted ec.var matches 1 run function evercraft:quests/reputation/noon_gifts

# Clear noon flag well past noon (visual_time 10000+)
execute if score #visual_time ec.var matches 10000..18000 if score #quest_noon_gifted ec.var matches 1 run scoreboard players set #quest_noon_gifted ec.var 0
