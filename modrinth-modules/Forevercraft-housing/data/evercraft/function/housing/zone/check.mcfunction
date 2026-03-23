# ============================================================
# Housing Zone Check — Is player within 64 blocks of their home?
# Run as: player with hs.tier >= 1, at player position
# Uses scoreboard math: |player_x - home_x| <= 64 AND |player_y - home_y| <= 64 AND |player_z - home_z| <= 64
# ============================================================

# Dimension check first (0=OW, 1=Nether, 2=End)
scoreboard players set #hs_cur_dim hs.temp 0
execute if dimension minecraft:the_nether run scoreboard players set #hs_cur_dim hs.temp 1
execute if dimension minecraft:the_end run scoreboard players set #hs_cur_dim hs.temp 2

# Wrong dimension → leave zone if was in it
execute unless score #hs_cur_dim hs.temp = @s hs.home_dim if score @s hs.in_zone matches 1 run function evercraft:housing/zone/leave
execute unless score #hs_cur_dim hs.temp = @s hs.home_dim run return fail

# X check: abs(player_x - home_x) <= 64
execute store result score #hs_px hs.temp run data get entity @s Pos[0]
scoreboard players operation #hs_px hs.temp -= @s hs.home_x
execute if score #hs_px hs.temp matches ..-1 run scoreboard players operation #hs_px hs.temp *= #-1 ec.const

# Y check: abs(player_y - home_y) <= 64
execute store result score #hs_py hs.temp run data get entity @s Pos[1]
scoreboard players operation #hs_py hs.temp -= @s hs.home_y
execute if score #hs_py hs.temp matches ..-1 run scoreboard players operation #hs_py hs.temp *= #-1 ec.const

# Z check: abs(player_z - home_z) <= 64
execute store result score #hs_pz hs.temp run data get entity @s Pos[2]
scoreboard players operation #hs_pz hs.temp -= @s hs.home_z
execute if score #hs_pz hs.temp matches ..-1 run scoreboard players operation #hs_pz hs.temp *= #-1 ec.const

# Determine in/out of zone
# In zone: X, Y, and Z all within 64
scoreboard players set #hs_in hs.temp 0
execute if score #hs_px hs.temp matches ..64 if score #hs_py hs.temp matches ..64 if score #hs_pz hs.temp matches ..64 run scoreboard players set #hs_in hs.temp 1

# State transition: was out, now in → enter
execute if score @s hs.in_zone matches 0 if score #hs_in hs.temp matches 1 run function evercraft:housing/zone/enter

# State transition: was in, now out → leave
execute if score @s hs.in_zone matches 1 if score #hs_in hs.temp matches 0 run function evercraft:housing/zone/leave

# If still in zone, apply buffs (refresh potion effects)
execute if score #hs_in hs.temp matches 1 run function evercraft:housing/zone/apply_buffs
