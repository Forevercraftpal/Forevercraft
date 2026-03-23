# Quest Tips — show detailed explanation based on quest type (#qtype ec.var)
# 1=gather 2=hunt 3=forage 4=prospect 5=craft 6=cook 7=lore
# 8=explore 9=dungeon 10=rune 11=transmute 12=boss 13=forage+prospect

# Gather — have items in your inventory from any source
execute if score #qtype ec.var matches 1 run tellraw @s ["",{"text":"  \u00bb ","color":"dark_aqua"},{"text":"Have the required items in your ","color":"aqua"},{"text":"inventory","color":"yellow"},{"text":". Any source counts \u2014 mine, farm, trade, or loot them!","color":"aqua"}]

# Hunt — kill mobs after accepting quest
execute if score #qtype ec.var matches 2 run tellraw @s ["",{"text":"  \u00bb ","color":"dark_aqua"},{"text":"Kill the required mobs anywhere in the world. Only kills made ","color":"aqua"},{"text":"after accepting","color":"yellow"},{"text":" this quest count toward your goal.","color":"aqua"}]

# Forage — find special bushes, use iron axe/hoe
execute if score #qtype ec.var matches 3 run tellraw @s ["",{"text":"  \u00bb ","color":"dark_aqua"},{"text":"Find glowing ","color":"aqua"},{"text":"Forage Bushes","color":"green"},{"text":" in the wild. Equip an ","color":"aqua"},{"text":"Iron Axe or Hoe","color":"yellow"},{"text":" (or better) and ","color":"aqua"},{"text":"right-click","color":"yellow"},{"text":" the bush to harvest. These are ","color":"aqua"},{"text":"custom bushes","color":"green"},{"text":", NOT regular berry bushes!","color":"aqua"}]

# Prospect — find special ore nodes, use iron pickaxe
execute if score #qtype ec.var matches 4 run tellraw @s ["",{"text":"  \u00bb ","color":"dark_aqua"},{"text":"Find glowing ","color":"aqua"},{"text":"Ore Nodes","color":"gold"},{"text":" deep underground. Equip an ","color":"aqua"},{"text":"Iron Pickaxe","color":"yellow"},{"text":" (or better) and ","color":"aqua"},{"text":"right-click","color":"yellow"},{"text":" the node to mine it. These are ","color":"aqua"},{"text":"custom nodes","color":"gold"},{"text":", NOT regular ores!","color":"aqua"}]

# Craft — have crafted items in inventory
execute if score #qtype ec.var matches 5 run tellraw @s ["",{"text":"  \u00bb ","color":"dark_aqua"},{"text":"Craft the required items and have them in your ","color":"aqua"},{"text":"inventory","color":"yellow"},{"text":". Use a Crafting Table, Furnace, or any appropriate workstation.","color":"aqua"}]

# Cook — use the custom cooking system
execute if score #qtype ec.var matches 6 run tellraw @s ["",{"text":"  \u00bb ","color":"dark_aqua"},{"text":"Prepare meals using the ","color":"aqua"},{"text":"Cooking system","color":"yellow"},{"text":". Visit a village and interact with a ","color":"aqua"},{"text":"Cooking Station","color":"yellow"},{"text":" to cook meals. Regular furnace cooking does ","color":"aqua"},{"text":"NOT","color":"red"},{"text":" count!","color":"aqua"}]

# Lore — find lore fragments in the world
execute if score #qtype ec.var matches 7 run tellraw @s ["",{"text":"  \u00bb ","color":"dark_aqua"},{"text":"Discover ","color":"aqua"},{"text":"Lore Fragments","color":"light_purple"},{"text":" by exploring structures, opening chests, and investigating special locations across the world.","color":"aqua"}]

# Explore — travel to and enter a structure
execute if score #qtype ec.var matches 8 run tellraw @s ["",{"text":"  \u00bb ","color":"dark_aqua"},{"text":"Travel to and physically ","color":"aqua"},{"text":"enter","color":"yellow"},{"text":" the specified structure or location. The quest completes when you arrive at the site.","color":"aqua"}]

# Dungeon — complete dungeon wave challenges
execute if score #qtype ec.var matches 9 run tellraw @s ["",{"text":"  \u00bb ","color":"dark_aqua"},{"text":"Complete ","color":"aqua"},{"text":"Dungeon challenges","color":"red"},{"text":" found at dungeon entrances in the world. Fight through ","color":"aqua"},{"text":"all 5 waves","color":"yellow"},{"text":" to clear a dungeon run.","color":"aqua"}]

# Rune — forge runes at a Glyphforge
execute if score #qtype ec.var matches 10 run tellraw @s ["",{"text":"  \u00bb ","color":"dark_aqua"},{"text":"Forge Runes at a ","color":"aqua"},{"text":"Glyphforge","color":"gold"},{"text":". Place the required materials on the forge and activate it to begin forging.","color":"aqua"}]

# Transmute — use the transmutation system
execute if score #qtype ec.var matches 11 run tellraw @s ["",{"text":"  \u00bb ","color":"dark_aqua"},{"text":"Transmute items using the ","color":"aqua"},{"text":"Transmutation Table","color":"gold"},{"text":". Place materials on the table to convert them into new forms.","color":"aqua"}]

# Boss — defeat world bosses
execute if score #qtype ec.var matches 12 run tellraw @s ["",{"text":"  \u00bb ","color":"dark_aqua"},{"text":"Defeat powerful ","color":"aqua"},{"text":"World Bosses","color":"dark_red"},{"text":" found throughout the world. Prepare well \u2014 bosses are extremely dangerous!","color":"aqua"}]

# Forage + Prospect combo
execute if score #qtype ec.var matches 13 run tellraw @s ["",{"text":"  \u00bb ","color":"dark_aqua"},{"text":"Combined total! ","color":"aqua"},{"text":"Forage Bushes","color":"green"},{"text":" (Iron Axe/Hoe + right-click) and ","color":"aqua"},{"text":"Ore Nodes","color":"gold"},{"text":" (Iron Pickaxe + right-click) ","color":"aqua"},{"text":"both","color":"yellow"},{"text":" count toward this goal.","color":"aqua"}]
