# Tab page next — runs as interaction entity
data remove entity @s interaction

# Switch to page 1 if on page 0
execute as @a[tag=CK.InMenu,distance=..5,limit=1] if score @s ec.ck_tab_page matches 0 run scoreboard players set @s ec.ck_tab_page 1
execute as @a[tag=CK.InMenu,distance=..5,limit=1] if score @s ec.ck_tab_page matches 1 run function evercraft:cooking/gui/refresh_tabs

playsound minecraft:ui.button.click master @a[tag=CK.InMenu,distance=..5,limit=1] ~ ~ ~ 0.5 1.0
