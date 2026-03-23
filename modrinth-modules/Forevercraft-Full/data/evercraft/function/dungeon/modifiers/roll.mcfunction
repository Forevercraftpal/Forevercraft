# Dungeon Modifiers — Roll a random modifier at dungeon start
# Modifiers: 1=Relentless, 2=Fortified, 3=Shrouded, 4=Volatile, 5=Undying, 6=Frenzied

execute store result score #dg_modifier ec.var run random value 1..6

# Set modifier name + description in storage for macro announcement
execute if score #dg_modifier ec.var matches 1 run data modify storage evercraft:dungeon modifier set value {name:"Relentless",desc:"Mobs are faster",color:"aqua"}
execute if score #dg_modifier ec.var matches 2 run data modify storage evercraft:dungeon modifier set value {name:"Fortified",desc:"Mobs take less damage",color:"blue"}
execute if score #dg_modifier ec.var matches 3 run data modify storage evercraft:dungeon modifier set value {name:"Shrouded",desc:"Darkness clouds your vision",color:"dark_gray"}
execute if score #dg_modifier ec.var matches 4 run data modify storage evercraft:dungeon modifier set value {name:"Volatile",desc:"Mobs are immovable",color:"red"}
execute if score #dg_modifier ec.var matches 5 run data modify storage evercraft:dungeon modifier set value {name:"Undying",desc:"Mobs slowly regenerate",color:"green"}
execute if score #dg_modifier ec.var matches 6 run data modify storage evercraft:dungeon modifier set value {name:"Frenzied",desc:"Mobs deal more damage",color:"dark_red"}

# Announce modifier
function evercraft:dungeon/modifiers/announce with storage evercraft:dungeon modifier
