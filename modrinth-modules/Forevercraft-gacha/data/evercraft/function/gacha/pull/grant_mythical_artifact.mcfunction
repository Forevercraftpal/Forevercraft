# Grant a random exclusive gacha mythical artifact (9 total)
# Runs as @s = player

execute store result score #artifact_roll ec.temp run random value 1..9

execute if score #artifact_roll ec.temp matches 1 run loot give @s loot evercraft:artifacts/mythical/the_starless_night
execute if score #artifact_roll ec.temp matches 1 run tellraw @s [{"text":"\u2726\u2726\u2726 ","color":"gold"},{"text":"MYTHICAL: ","color":"gold","bold":true},{"text":"The Starless Night","color":"yellow","bold":true},{"text":" \u2726\u2726\u2726","color":"gold"}]

execute if score #artifact_roll ec.temp matches 2 run loot give @s loot evercraft:artifacts/mythical/shooting_star
execute if score #artifact_roll ec.temp matches 2 run tellraw @s [{"text":"\u2726\u2726\u2726 ","color":"gold"},{"text":"MYTHICAL: ","color":"gold","bold":true},{"text":"Shooting Star","color":"yellow","bold":true},{"text":" \u2726\u2726\u2726","color":"gold"}]

execute if score #artifact_roll ec.temp matches 3 run loot give @s loot evercraft:artifacts/mythical/dreamcast_compass
execute if score #artifact_roll ec.temp matches 3 run tellraw @s [{"text":"\u2726\u2726\u2726 ","color":"gold"},{"text":"MYTHICAL: ","color":"gold","bold":true},{"text":"Dreamcast Compass","color":"yellow","bold":true},{"text":" \u2726\u2726\u2726","color":"gold"}]

execute if score #artifact_roll ec.temp matches 4 run loot give @s loot evercraft:artifacts/mythical/hero_helmet
execute if score #artifact_roll ec.temp matches 4 run tellraw @s [{"text":"\u2726\u2726\u2726 ","color":"gold"},{"text":"MYTHICAL: ","color":"gold","bold":true},{"text":"Hero's Helmet","color":"yellow","bold":true},{"text":" \u2726\u2726\u2726","color":"gold"}]

execute if score #artifact_roll ec.temp matches 5 run loot give @s loot evercraft:artifacts/mythical/hero_chestplate
execute if score #artifact_roll ec.temp matches 5 run tellraw @s [{"text":"\u2726\u2726\u2726 ","color":"gold"},{"text":"MYTHICAL: ","color":"gold","bold":true},{"text":"Hero's Chestplate","color":"yellow","bold":true},{"text":" \u2726\u2726\u2726","color":"gold"}]

execute if score #artifact_roll ec.temp matches 6 run loot give @s loot evercraft:artifacts/mythical/hero_leggings
execute if score #artifact_roll ec.temp matches 6 run tellraw @s [{"text":"\u2726\u2726\u2726 ","color":"gold"},{"text":"MYTHICAL: ","color":"gold","bold":true},{"text":"Hero's Leggings","color":"yellow","bold":true},{"text":" \u2726\u2726\u2726","color":"gold"}]

execute if score #artifact_roll ec.temp matches 7 run loot give @s loot evercraft:artifacts/mythical/hero_boots
execute if score #artifact_roll ec.temp matches 7 run tellraw @s [{"text":"\u2726\u2726\u2726 ","color":"gold"},{"text":"MYTHICAL: ","color":"gold","bold":true},{"text":"Hero's Boots","color":"yellow","bold":true},{"text":" \u2726\u2726\u2726","color":"gold"}]

execute if score #artifact_roll ec.temp matches 8 run loot give @s loot evercraft:artifacts/mythical/robot_dancers_sword
execute if score #artifact_roll ec.temp matches 8 run tellraw @s [{"text":"\u2726\u2726\u2726 ","color":"gold"},{"text":"MYTHICAL: ","color":"gold","bold":true},{"text":"Robot Dancer's Sword","color":"yellow","bold":true},{"text":" \u2726\u2726\u2726","color":"gold"}]

execute if score #artifact_roll ec.temp matches 9 run loot give @s loot evercraft:artifacts/mythical/droid_dancers_sword
execute if score #artifact_roll ec.temp matches 9 run tellraw @s [{"text":"\u2726\u2726\u2726 ","color":"gold"},{"text":"MYTHICAL: ","color":"gold","bold":true},{"text":"Droid Dancer's Sword","color":"yellow","bold":true},{"text":" \u2726\u2726\u2726","color":"gold"}]
