# Give a Trial Pass to the player
loot give @s loot evercraft:craftforever/trials/trial_pass
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.2
tellraw @s [{"text":"  \u2726 ","color":"#FFA500"},{"text":"Trial Pass","color":"#FFA500","bold":true},{"text":" received!","color":"gray"}]
