# Bookworm — check if a bookshelf is within 2 blocks of the player
execute at @s if block ~1 ~ ~ bookshelf run function evercraft:spirit_tome/complete
execute at @s if block ~-1 ~ ~ bookshelf run function evercraft:spirit_tome/complete
execute at @s if block ~ ~1 ~ bookshelf run function evercraft:spirit_tome/complete
execute at @s if block ~ ~-1 ~ bookshelf run function evercraft:spirit_tome/complete
execute at @s if block ~ ~ ~1 bookshelf run function evercraft:spirit_tome/complete
execute at @s if block ~ ~ ~-1 bookshelf run function evercraft:spirit_tome/complete
