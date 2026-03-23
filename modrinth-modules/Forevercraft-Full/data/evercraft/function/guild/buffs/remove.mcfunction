# ============================================================
# Guild Buffs — Remove all guild buffs from player
# @s = player leaving/being removed from guild
# ============================================================

tag @s remove ec.guild_xp_bonus
attribute @s minecraft:luck modifier remove evercraft:guild_luck
attribute @s minecraft:movement_speed modifier remove evercraft:guild_speed
attribute @s minecraft:armor modifier remove evercraft:guild_armor
effect clear @s regeneration
