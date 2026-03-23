# Guild XP — Recurse level-up check after a level was gained
# @s = guild marker entity
# Re-reads current level from marker and checks again

execute store result score #guild_cur_lvl ec.temp run data get entity @s data.level
execute store result score #guild_cur_xp ec.temp run data get entity @s data.xp
function evercraft:guild/xp/check_levelup
