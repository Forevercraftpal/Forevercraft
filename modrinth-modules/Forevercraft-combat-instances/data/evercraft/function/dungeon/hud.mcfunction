# Dungeon Instance System — HUD (Actionbar Display)
# Computes timer display and shows wave/mobs/time via macro

# Calculate total seconds remaining
scoreboard players operation #dg_sec ec.var = #dg_timer ec.var
scoreboard players operation #dg_sec ec.var /= #20 ec.const

# Calculate minutes
scoreboard players operation #dg_min ec.var = #dg_sec ec.var
scoreboard players operation #dg_min ec.var /= #60 ec.const

# Calculate remaining seconds (sec % 60)
scoreboard players operation #dg_sec_rem ec.var = #dg_sec ec.var
scoreboard players operation #dg_sec_rem ec.var %= #60 ec.const

# Store values to storage for macro
execute store result storage evercraft:dungeon hud.wave int 1 run scoreboard players get #dg_wave ec.var
execute store result storage evercraft:dungeon hud.mobs int 1 run scoreboard players get #dg_mobs ec.var
execute store result storage evercraft:dungeon hud.min int 1 run scoreboard players get #dg_min ec.var
execute store result storage evercraft:dungeon hud.sec int 1 run scoreboard players get #dg_sec_rem ec.var

# Call macro to display HUD (different format for seconds < 10 for zero-padding)
execute if score #dg_sec_rem ec.var matches ..9 run function evercraft:dungeon/hud_display_padded with storage evercraft:dungeon hud
execute if score #dg_sec_rem ec.var matches 10.. run function evercraft:dungeon/hud_display with storage evercraft:dungeon hud
