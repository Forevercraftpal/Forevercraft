# Guild Expedition — Update menu display text entity
# Called from refresh_info when menu is open

# Map activity ID to storage for macro
data modify storage evercraft:expedition menu.activity set value "None"
execute if score #expedition_activity ec.var matches 1 run data modify storage evercraft:expedition menu.activity set value "Dungeons"
execute if score #expedition_activity ec.var matches 2 run data modify storage evercraft:expedition menu.activity set value "Fishing"
execute if score #expedition_activity ec.var matches 3 run data modify storage evercraft:expedition menu.activity set value "Foraging"
execute if score #expedition_activity ec.var matches 4 run data modify storage evercraft:expedition menu.activity set value "Mob Slaying"
execute if score #expedition_activity ec.var matches 5 run data modify storage evercraft:expedition menu.activity set value "Prospecting"
execute if score #expedition_activity ec.var matches 6 run data modify storage evercraft:expedition menu.activity set value "Fountain of Dreams"
execute if score #expedition_activity ec.var matches 7 run data modify storage evercraft:expedition menu.activity set value "Quests"
execute if score #expedition_activity ec.var matches 8 run data modify storage evercraft:expedition menu.activity set value "Bounties"
execute if score #expedition_activity ec.var matches 9 run data modify storage evercraft:expedition menu.activity set value "Lore Discovery"
execute if score #expedition_activity ec.var matches 10 run data modify storage evercraft:expedition menu.activity set value "World Bosses"
execute if score #expedition_activity ec.var matches 11 run data modify storage evercraft:expedition menu.activity set value "Structure Crates"
execute if score #expedition_activity ec.var matches 12 run data modify storage evercraft:expedition menu.activity set value "Patron Mobs"
execute if score #expedition_activity ec.var matches 13 run data modify storage evercraft:expedition menu.activity set value "Cooking"

# Compute display parts: mult_int (integer) and mult_dec (2-digit decimal)
# #expedition_mult is ×100 scale (e.g. 125 = 1.25x, 375 = 3.75x)
scoreboard players operation #exp_disp_int ec.temp = #expedition_mult ec.var
scoreboard players operation #exp_disp_int ec.temp /= #100 ec.const
scoreboard players operation #exp_disp_dec ec.temp = #expedition_mult ec.var
scoreboard players operation #exp_disp_dec ec.temp %= #100 ec.const

execute store result storage evercraft:expedition menu.mult_int int 1 run scoreboard players get #exp_disp_int ec.temp
execute store result storage evercraft:expedition menu.mult_dec int 1 run scoreboard players get #exp_disp_dec ec.temp
execute store result storage evercraft:expedition menu.fountain int 1 run scoreboard players get #expedition_fountain ec.var

# Update entity text via macro
execute as @e[type=text_display,tag=ec.guild_expedition_txt,distance=..8] run function evercraft:guild/expedition/set_menu_text with storage evercraft:expedition menu
