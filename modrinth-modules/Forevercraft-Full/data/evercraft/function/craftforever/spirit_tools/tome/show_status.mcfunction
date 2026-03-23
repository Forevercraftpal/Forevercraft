# Artisan Tome — Show current quest status
# Runs as the player who used the tome

tellraw @s [{"text":"  --- ","color":"dark_gray"},{"text":"Artisan Tome","color":"green","bold":true},{"text":" ---","color":"dark_gray"}]

# Re-route to populate quest text in storage
function evercraft:craftforever/spirit_tools/tome/quests/route

# Show quest part and progress
execute store result storage evercraft:artisan_tome display.part int 1 run scoreboard players get @s ec.tq_part
function evercraft:craftforever/spirit_tools/tome/quests/show_quest_status with storage evercraft:artisan_tome display

playsound minecraft:item.book.page_turn master @s ~ ~ ~ 0.5 1.0
