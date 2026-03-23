# Friend Gift — On login: catch up missed daily resets for streak evaluation
# @s = player who just joined
# Compares last_daily_day with current #visual_day to determine if reset was missed

# Get UUID3
execute store result storage evercraft:friends temp.catchup_uuid3 int 1 run data get entity @s UUID[3]
execute store result score #fr_cu_self_uuid3 ec.temp run data get entity @s UUID[3]

# Check if player has friend data
function evercraft:friends/gift/login_streak_catchup_do with storage evercraft:friends temp
