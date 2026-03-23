# ============================================================
# Guild Buffs — Apply based on contribution tier
# @s = guilded player (ec.guild_id >= 1)
# Called every 5s from guild/tick
# Effects given with 7s duration (5s refresh = always active)
# ============================================================

# Rank 1 (Associate): No buffs

# Rank 2+ (Member): +5% XP boost (tag checked in XP functions)
# XP boost is tag-based, applied/removed based on rank
execute if score @s ec.guild_rank matches 2.. run tag @s add ec.guild_xp_bonus
execute if score @s ec.guild_rank matches ..1 run tag @s remove ec.guild_xp_bonus

# Rank 3+ (Aide): +1 Luck
execute if score @s ec.guild_rank matches 3.. run attribute @s minecraft:luck modifier add evercraft:guild_luck 1 add_value

# Rank 4+ (Representative): +5% movement speed
execute if score @s ec.guild_rank matches 4.. run attribute @s minecraft:movement_speed modifier add evercraft:guild_speed 0.05 add_multiplied_base

# Rank 5+ (Administrator): XP boost to +10%, Luck to +2
execute if score @s ec.guild_rank matches 5.. run attribute @s minecraft:luck modifier remove evercraft:guild_luck
execute if score @s ec.guild_rank matches 5.. run attribute @s minecraft:luck modifier add evercraft:guild_luck 2 add_value

# Rank 6+ (Dedicated): Speed to +10%, +2 armor
execute if score @s ec.guild_rank matches 6.. run attribute @s minecraft:movement_speed modifier remove evercraft:guild_speed
execute if score @s ec.guild_rank matches 6.. run attribute @s minecraft:movement_speed modifier add evercraft:guild_speed 0.10 add_multiplied_base
execute if score @s ec.guild_rank matches 6.. run attribute @s minecraft:armor modifier add evercraft:guild_armor 2 add_value

# Rank 7 (Valorous): XP to +15%, Luck to +3, +4 armor, Regeneration I
execute if score @s ec.guild_rank matches 7 run attribute @s minecraft:luck modifier remove evercraft:guild_luck
execute if score @s ec.guild_rank matches 7 run attribute @s minecraft:luck modifier add evercraft:guild_luck 3 add_value
execute if score @s ec.guild_rank matches 7 run attribute @s minecraft:armor modifier remove evercraft:guild_armor
execute if score @s ec.guild_rank matches 7 run attribute @s minecraft:armor modifier add evercraft:guild_armor 4 add_value
execute if score @s ec.guild_rank matches 7 run effect give @s regeneration 7 0 true
