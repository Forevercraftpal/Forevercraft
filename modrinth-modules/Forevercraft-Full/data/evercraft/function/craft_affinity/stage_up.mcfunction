# === CRAFTING AFFINITY — STAGE-UP CELEBRATION ===
# #new_stage ec.temp = new stage (1-7), @s = player

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.0
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 20

# Class name for subtitle
scoreboard players set #cls_name ec.temp 0
execute if score @s ec.caff_class matches 1 run tellraw @s [{"text":""},{"text":"  ✦ ","color":"gold"},{"text":"Stonestrike","color":"gold","bold":true},{"text":" Affinity Increased!","color":"gray"}]
execute if score @s ec.caff_class matches 2 run tellraw @s [{"text":""},{"text":"  ✦ ","color":"dark_green"},{"text":"Lumberfell","color":"dark_green","bold":true},{"text":" Affinity Increased!","color":"gray"}]
execute if score @s ec.caff_class matches 3 run tellraw @s [{"text":""},{"text":"  ✦ ","color":"green"},{"text":"Growseer","color":"green","bold":true},{"text":" Affinity Increased!","color":"gray"}]
execute if score @s ec.caff_class matches 4 run tellraw @s [{"text":""},{"text":"  ✦ ","color":"#C2B280"},{"text":"Terrawarp","color":"#C2B280","bold":true},{"text":" Affinity Increased!","color":"gray"}]
execute if score @s ec.caff_class matches 5 run tellraw @s [{"text":""},{"text":"  ✦ ","color":"aqua"},{"text":"Sirencall","color":"aqua","bold":true},{"text":" Affinity Increased!","color":"gray"}]
execute if score @s ec.caff_class matches 6 run tellraw @s [{"text":""},{"text":"  ✦ ","color":"light_purple"},{"text":"Lamentor","color":"light_purple","bold":true},{"text":" Affinity Increased!","color":"gray"}]

# Title based on stage tier
execute if score #new_stage ec.temp matches 1 run title @s title [{"text":"✦ ","color":"gold"},{"text":"Common","color":"white","bold":true},{"text":" ✦","color":"gold"}]
execute if score #new_stage ec.temp matches 2 run title @s title [{"text":"✦ ","color":"gold"},{"text":"Uncommon","color":"blue","bold":true},{"text":" ✦","color":"gold"}]
execute if score #new_stage ec.temp matches 3 run title @s title [{"text":"✦ ","color":"gold"},{"text":"Rare","color":"aqua","bold":true},{"text":" ✦","color":"gold"}]
execute if score #new_stage ec.temp matches 4 run title @s title [{"text":"✦ ","color":"gold"},{"text":"Ornate","color":"dark_purple","bold":true},{"text":" ✦","color":"gold"}]
execute if score #new_stage ec.temp matches 5 run title @s title [{"text":"✦ ","color":"gold"},{"text":"Exquisite","color":"light_purple","bold":true},{"text":" ✦","color":"gold"}]
execute if score #new_stage ec.temp matches 6 run title @s title [{"text":"✦ ","color":"gold"},{"text":"Mythical","color":"gold","bold":true},{"text":" ✦","color":"gold"}]
execute if score #new_stage ec.temp matches 7 run title @s title [{"text":"✦ ","color":"yellow"},{"text":"SPIRIT","color":"yellow","bold":true},{"text":" ✦","color":"yellow"}]

title @s subtitle {"text":"Crafting Affinity Increased","color":"gray"}

# Stage 7 special: notify mastery quest available
execute if score #new_stage ec.temp matches 7 run tellraw @s [{"text":""},{"text":"  ★ ","color":"yellow"},{"text":"Mastery Quest Unlocked!","color":"yellow","bold":true},{"text":" Complete the challenge to reach ","color":"gray"},{"text":"20%","color":"green","bold":true},{"text":" permanent bonus.","color":"gray"}]
execute if score #new_stage ec.temp matches 7 run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.2
