# Lucid Claim — player chose an item via /trigger ec.spark set <1-9>
# Runs as @s = player

# Validate spark is ready
execute unless score @s ec.wish_spark matches 50.. run return run tellraw @s [{"text":"\u2605 ","color":"gray"},{"text":"Lucid Claim not ready!","color":"red"}]

# Grant chosen item
execute if score @s ec.spark matches 1 run loot give @s loot evercraft:artifacts/mythical/the_starless_night
execute if score @s ec.spark matches 2 run loot give @s loot evercraft:artifacts/mythical/shooting_star
execute if score @s ec.spark matches 3 run loot give @s loot evercraft:artifacts/mythical/dreamcast_compass
execute if score @s ec.spark matches 4 run loot give @s loot evercraft:artifacts/mythical/hero_helmet
execute if score @s ec.spark matches 5 run loot give @s loot evercraft:artifacts/mythical/hero_chestplate
execute if score @s ec.spark matches 6 run loot give @s loot evercraft:artifacts/mythical/hero_leggings
execute if score @s ec.spark matches 7 run loot give @s loot evercraft:artifacts/mythical/hero_boots
execute if score @s ec.spark matches 8 run loot give @s loot evercraft:artifacts/mythical/robot_dancers_sword
execute if score @s ec.spark matches 9 run loot give @s loot evercraft:artifacts/mythical/droid_dancers_sword

# Invalid selection
execute unless score @s ec.spark matches 1..9 run return run tellraw @s [{"text":"\u2605 ","color":"gray"},{"text":"Invalid choice! Use 1-9.","color":"red"}]

# Reset spark counter
scoreboard players set @s ec.wish_spark 0

# Celebration
tellraw @a [{"text":"\u2605\u2605\u2605 ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" claimed their ","color":"gray"},{"text":"LUCID CLAIM","color":"gold","bold":true},{"text":" from the Fountain!","color":"gray"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.8
particle totem_of_undying ~ ~1.5 ~ 1 1.5 1 0.5 100 force @s
title @s subtitle {"text":"Lucid Dream Fulfilled!","color":"gold"}
title @s title {"text":"\u2605 CLAIMED \u2605","color":"gold","bold":true}

# Reset trigger
scoreboard players set @s ec.spark 0
scoreboard players enable @s ec.spark
