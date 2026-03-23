# ============================================================
# Inscription Stones — Try Inscribe
# Called from on_glyph_use after glyph type is stored in storage.
# Raycasts from player eyes to find polished_deepslate.
# If found: inscribes the block (summons marker, consumes glyph).
# If not found or at limit: schedules glyph restore for 1 tick later.
# ============================================================

# Determine which pool to use (priority: guild → home → personal)
# Clear any stale pool tags
tag @s remove ec.inscr_pool_guild
tag @s remove ec.inscr_pool_home
tag @s remove ec.inscr_pool_personal

# Guild pool: in guild zone + guild count < 1
execute if score @s ec.guild_in_zone matches 1.. if score @s ec.inscr_guild_count matches ..0 run tag @s add ec.inscr_pool_guild

# Home pool: in home zone + home count < 4 (only if guild pool wasn't chosen)
execute unless entity @s[tag=ec.inscr_pool_guild] if score @s hs.in_zone matches 1.. if score @s ec.inscr_home_count matches ..3 run tag @s add ec.inscr_pool_home

# Personal pool: count < 3 (only if no zone pool chosen)
execute unless entity @s[tag=ec.inscr_pool_guild] unless entity @s[tag=ec.inscr_pool_home] if score @s ec.inscr_count matches ..2 run tag @s add ec.inscr_pool_personal

# Reject if no pool has room
execute unless entity @s[tag=ec.inscr_pool_guild] unless entity @s[tag=ec.inscr_pool_home] unless entity @s[tag=ec.inscr_pool_personal] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cannot place more Inscription Stones!",color:"red"}]
execute unless entity @s[tag=ec.inscr_pool_guild] unless entity @s[tag=ec.inscr_pool_home] unless entity @s[tag=ec.inscr_pool_personal] run tag @s add ec.inscr_restore
execute unless entity @s[tag=ec.inscr_pool_guild] unless entity @s[tag=ec.inscr_pool_home] unless entity @s[tag=ec.inscr_pool_personal] run schedule function evercraft:inscription/cleanup 1t append
execute unless entity @s[tag=ec.inscr_pool_guild] unless entity @s[tag=ec.inscr_pool_home] unless entity @s[tag=ec.inscr_pool_personal] run return 0

# Raycast from player eyes to find polished_deepslate (max 5 blocks)
scoreboard players set #inscr_ray ec.temp 0
execute anchored eyes positioned ^ ^ ^0.5 run function evercraft:inscription/ray/step

# After raycast: schedule cleanup if restore needed OR if rune activation needs tag clearing
execute if entity @s[tag=ec.inscr_restore] run schedule function evercraft:inscription/cleanup 1t append
execute unless entity @s[tag=ec.inscr_restore] if entity @s[tag=ec.rune_activated] run schedule function evercraft:inscription/cleanup 1t append
