# ============================================================
# Guild Zone — Apply passive buffs while in zone
# @s = player in guild zone, called every 5s
# Effects given with 7s duration (5s refresh = always active)
# ============================================================

# All members: Regeneration I + Resistance I — harmonized to II if also in housing zone
execute unless score @s hs.in_zone matches 1 run effect give @s regeneration 7 0 true
execute if score @s hs.in_zone matches 1 run effect give @s regeneration 7 1 true
execute unless score @s hs.in_zone matches 1 run effect give @s resistance 7 0 true
execute if score @s hs.in_zone matches 1 if score @s hs.tier matches 5 run effect give @s resistance 7 1 true
execute if score @s hs.in_zone matches 1 unless score @s hs.tier matches 5 run effect give @s resistance 7 0 true

# Guild level 3+: Haste I
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] store result score #gz_guild_lvl ec.temp run data get entity @s data.level

execute if score #gz_guild_lvl ec.temp matches 3.. run effect give @s haste 7 0 true

# Guild level 7+: Hero of the Village
execute if score #gz_guild_lvl ec.temp matches 7.. run effect give @s hero_of_the_village 7 0 true

# Pet Warp Strike — tamed mobs defend the guild hall (every 10s = 2 cycles of 5s tick)
scoreboard players remove @s ec.gs_warp_cd 1
execute if score @s ec.gs_warp_cd matches ..0 run function evercraft:guild/pet_warp/strike_guild
execute if score @s ec.gs_warp_cd matches ..0 run scoreboard players set @s ec.gs_warp_cd 2

# Zone Protection: Tamed cats, dogs, and parrots owned by guild members get Regen I + Resistance I (7s)
execute at @s as @e[type=#evercraft:zone_protected_pets,tag=ec.tame_protected,distance=..128] run function evercraft:guild/zone/buff_member_pets
