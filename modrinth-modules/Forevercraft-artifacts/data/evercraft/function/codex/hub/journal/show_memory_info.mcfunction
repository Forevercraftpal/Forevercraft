# Journal — Show Memory Description
# Run as: player in menu
# Reads #mem_click ec.temp to determine which memory description to show

execute if score #mem_click ec.temp matches 0 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"First Steps Together","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Summon your companion for the first time.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 1 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"The Hunt","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Slay a creature with your companion by your side.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 2 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Vs. the Colossus","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Defeat a boss while your companion is active.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 3 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Treasure Found","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Open a Mythical crate with your companion.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 4 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"New Horizons","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Explore a new biome together.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 5 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"The Long Road","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Spend 10 hours with your companion summoned.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 6 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Into the Depths","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Venture below Y -48 together.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 7 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Through the Portal","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Visit the Nether or End with your companion.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 8 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"A Mythical Discovery","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Find a mythical artifact while your companion is active.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 9 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Eternal Bond","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Reach relationship level 5 with your companion.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 10 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Peaks of the World","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Climb above Y 300 together.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 11 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Warden's Shadow","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Enter the Deep Dark with your companion.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 12 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Ocean Abyss","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Dive below Y 20 in an ocean biome together.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 13 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Whiteout","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Brave a thunderstorm in an icy biome.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 14 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Trial by Fire","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Descend below Y 30 in the Nether.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 15 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Near Death","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Survive at 2 hearts or less with your companion.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 16 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Duelist's Glory","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Win a duel with your companion active.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 17 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Witching Hour","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Be outside at midnight during a thunderstorm.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 18 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Marathon","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Spend 50 hours with your companion summoned.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 19 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Pilgrimage","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Visit a village with your companion.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 20 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Homeward Bound","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Return to your Homestead with your companion.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 21 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Master's Journey","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Reach companion level 15.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 22 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Pack Leader","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Be near 2 or more players who also have companions.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 23 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Golden Feast","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Eat a golden apple with your companion active.","color":"gray","italic":true}]

execute if score #mem_click ec.temp matches 24 run tellraw @s [{"text":"  "},{"text":"\u2726 ","color":"light_purple"},{"text":"Starlight Summit","color":"gold","bold":true},{"text":"\n    ","color":"gray"},{"text":"Stand above Y 256 under the night sky.","color":"gray","italic":true}]

execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5
