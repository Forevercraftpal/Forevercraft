# Infinite Castle — HUD (actionbar)
# Shows floor, wave, and mob count

execute store result storage evercraft:castle hud.floor int 1 run scoreboard players get #ic_floor ec.var
execute store result storage evercraft:castle hud.wave int 1 run scoreboard players get #ic_wave ec.var
execute store result storage evercraft:castle hud.mobs int 1 run scoreboard players get #ic_mobs ec.var

function evercraft:castle/hud_display with storage evercraft:castle hud
