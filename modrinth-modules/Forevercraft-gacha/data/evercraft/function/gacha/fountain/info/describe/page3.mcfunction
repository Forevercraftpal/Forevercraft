# Describe items on Page 3 — Remaining Mythical (8)
# Macro {slot:N}, runs as @s = player

$scoreboard players set #gi_slot ec.temp $(slot)

execute if score #gi_slot ec.temp matches 0 run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Hero's Boots","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Mythical","color":"gold"},{"text":" (0.04%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 0 run tellraw @s [{"text":"Dancer Class","color":"#DA70D6","bold":true},{"text":" \u2014 Netherite Boots. ","color":"gray"},{"text":"Part of the Hero Set (4pc).","color":"dark_aqua"}]

execute if score #gi_slot ec.temp matches 1 run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Robot Dancer's Sword","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Mythical","color":"gold"},{"text":" (0.04%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 1 run tellraw @s [{"text":"Dancer Class","color":"#DA70D6","bold":true},{"text":" \u2014 Netherite Sword. ","color":"gray"},{"text":"Dances through foes with electric precision.","color":"dark_aqua"}]

execute if score #gi_slot ec.temp matches 2 run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Droid Dancer's Sword","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Mythical","color":"gold"},{"text":" (0.04%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 2 run tellraw @s [{"text":"Dancer Class","color":"#DA70D6","bold":true},{"text":" \u2014 Netherite Sword. ","color":"gray"},{"text":"A mechanical blade that mirrors its twin.","color":"dark_aqua"}]

execute if score #gi_slot ec.temp matches 3 run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Dreamstag Crate","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Mythical","color":"gold"},{"text":" (0.013%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 3 run tellraw @s {"text":"Contains the Dreamstag mythical companion.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 4 run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Starweaver Crate","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Mythical","color":"gold"},{"text":" (0.013%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 4 run tellraw @s {"text":"Contains the Starweaver mythical companion.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 5 run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Somnia Crate","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Mythical","color":"gold"},{"text":" (0.013%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 5 run tellraw @s {"text":"Contains the Somnia mythical companion.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 6 run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Dreamdust Crystal","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Mythical","color":"gold"},{"text":" (0.04%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 6 run tellraw @s {"text":"Grants 500 Dreamdust instantly.","color":"gray","italic":true}

execute if score #gi_slot ec.temp matches 7 run tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Dreamy Star","color":"white","bold":true},{"text":" \u2014 ","color":"dark_gray"},{"text":"Mythical","color":"gold"},{"text":" (0.04%)","color":"dark_gray"}]
execute if score #gi_slot ec.temp matches 7 run tellraw @s {"text":"Grants 50 Forever Coins. A dream come true.","color":"gray","italic":true}
