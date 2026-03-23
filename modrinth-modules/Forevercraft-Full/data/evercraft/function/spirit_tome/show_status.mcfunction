# Spirit Tome — Show current quest status
# Runs as the player who used the tome

tellraw @s [{"text":"  --- ","color":"dark_gray"},{"text":"Spirit Tome","color":"aqua","bold":true},{"text":" ---","color":"dark_gray"}]

# Re-route to populate quest text in storage
function evercraft:spirit_tome/quests/route

# Show quest part and progress
execute store result storage evercraft:spirit_tome display.part int 1 run scoreboard players get @s ec.sq_part
function evercraft:spirit_tome/quests/show_quest_status with storage evercraft:spirit_tome display

playsound minecraft:item.book.page_turn master @s ~ ~ ~ 0.5 1.0
