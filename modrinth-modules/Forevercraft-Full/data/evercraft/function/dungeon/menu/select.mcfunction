# Dungeon Difficulty Menu — Select Difficulty (Macro)
# Called with: {difficulty:N, label:"Name", color:"color"}
# Run as: interaction entity, need to route back to the player

# Clear interaction data so click doesn't re-fire
data remove entity @s interaction

# Set the selected difficulty
$scoreboard players set #dg_difficulty ec.var $(difficulty)

# Close the menu (runs as the player)
execute as @a[tag=DG.InMenu,distance=..5,limit=1,sort=nearest] run tag @s remove DG.InMenu
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=DG.MenuEl,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=DG.MenuEl,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=item_display,tag=DG.MenuEl,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Announce selection
$tellraw @a[distance=..5,limit=1,sort=nearest] [{text:"[Dungeon] ",color:"dark_purple"},{text:"Difficulty set to ",color:"gray"},{text:"$(label)",color:"$(color)",bold:true},{text:"!",color:"gray"}]

# Begin the dungeon (runs as the player who selected)
execute as @a[distance=..5,limit=1,sort=nearest] at @s run function evercraft:dungeon/begin
