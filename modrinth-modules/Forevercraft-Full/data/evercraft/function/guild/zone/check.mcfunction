# ============================================================
# Guild Zone Check — Is player within 128 blocks of their guild stone?
# Run as: guilded player, at player position
# Uses same scoreboard math pattern as housing/zone/check
# ============================================================

# Lazy sync: if zone coords not cached yet, load from guild marker
execute unless score @s ec.guild_zone_x matches -30000000..30000000 run function evercraft:guild/zone/sync

# Must have a zone set (still none after sync = guild has no stone)
execute unless score @s ec.guild_zone_x matches -30000000..30000000 run return 0

# Dimension check
scoreboard players set #gz_cur_dim ec.temp 0
execute if dimension minecraft:the_nether run scoreboard players set #gz_cur_dim ec.temp 1
execute if dimension minecraft:the_end run scoreboard players set #gz_cur_dim ec.temp 2

# Wrong dimension → leave zone if was in it
execute unless score #gz_cur_dim ec.temp = @s ec.guild_zone_dim if score @s ec.guild_in_zone matches 1 run function evercraft:guild/zone/on_leave
execute unless score #gz_cur_dim ec.temp = @s ec.guild_zone_dim run return 0

# X check: abs(player_x - zone_x) <= 128
execute store result score #gz_px ec.temp run data get entity @s Pos[0]
scoreboard players operation #gz_px ec.temp -= @s ec.guild_zone_x
execute if score #gz_px ec.temp matches ..-1 run scoreboard players operation #gz_px ec.temp *= #-1 ec.const

# Y check: abs(player_y - zone_y) <= 128
execute store result score #gz_py ec.temp run data get entity @s Pos[1]
scoreboard players operation #gz_py ec.temp -= @s ec.guild_zone_y
execute if score #gz_py ec.temp matches ..-1 run scoreboard players operation #gz_py ec.temp *= #-1 ec.const

# Z check: abs(player_z - zone_z) <= 128
execute store result score #gz_pz ec.temp run data get entity @s Pos[2]
scoreboard players operation #gz_pz ec.temp -= @s ec.guild_zone_z
execute if score #gz_pz ec.temp matches ..-1 run scoreboard players operation #gz_pz ec.temp *= #-1 ec.const

# Determine in/out of zone (all within 128)
scoreboard players set #gz_in ec.temp 0
execute if score #gz_px ec.temp matches ..128 if score #gz_py ec.temp matches ..128 if score #gz_pz ec.temp matches ..128 run scoreboard players set #gz_in ec.temp 1

# State transition: was out, now in → enter
execute if score @s ec.guild_in_zone matches 0 if score #gz_in ec.temp matches 1 run function evercraft:guild/zone/on_enter

# State transition: was in, now out → leave
execute if score @s ec.guild_in_zone matches 1 if score #gz_in ec.temp matches 0 run function evercraft:guild/zone/on_leave

# If in zone, apply buffs
execute if score #gz_in ec.temp matches 1 run function evercraft:guild/zone/apply_buffs
