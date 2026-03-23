# Housing Visitor Proximity — Is the visitor (stored in #hs_vis_*) within this homeowner's zone?
# @s = homeowner (from execute as @a)

# Already found near someone? Skip
execute if score #hs_near_any hs.temp matches 1 run return 0

# Dimension check
execute unless score #hs_vis_dim hs.temp = @s hs.home_dim run return 0

# X check
scoreboard players operation #hs_chk hs.temp = #hs_vis_x hs.temp
scoreboard players operation #hs_chk hs.temp -= @s hs.home_x
execute if score #hs_chk hs.temp matches ..-1 run scoreboard players operation #hs_chk hs.temp *= #-1 ec.const
execute if score #hs_chk hs.temp matches 65.. run return 0

# Y check
scoreboard players operation #hs_chk hs.temp = #hs_vis_y hs.temp
scoreboard players operation #hs_chk hs.temp -= @s hs.home_y
execute if score #hs_chk hs.temp matches ..-1 run scoreboard players operation #hs_chk hs.temp *= #-1 ec.const
execute if score #hs_chk hs.temp matches 65.. run return 0

# Z check
scoreboard players operation #hs_chk hs.temp = #hs_vis_z hs.temp
scoreboard players operation #hs_chk hs.temp -= @s hs.home_z
execute if score #hs_chk hs.temp matches ..-1 run scoreboard players operation #hs_chk hs.temp *= #-1 ec.const
execute if score #hs_chk hs.temp matches 65.. run return 0

# Within zone
scoreboard players set #hs_near_any hs.temp 1
