# Use Tree Shard — Grants 50 XP levels
# Triggered by advancement: evercraft:items/use_tree_shard

# Revoke so it can trigger again
advancement revoke @s only evercraft:items/use_tree_shard

# Grant 50 XP levels
xp add @s 50 levels

# Visual and audio feedback
particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0.5 0.3 0.5 30 force @s
particle minecraft:end_rod ~ ~1.5 ~ 0.2 0.3 0.2 0.02 15 force @s
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.0 1.0
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.8 0.6

# Notify the player
tellraw @s [{"text":"✦ ","color":"aqua"},{"text":"Tree Shard consumed! ","color":"green"},{"text":"+50 levels","color":"aqua","bold":true},{"text":" granted.","color":"gray"},{"text":" ✦","color":"aqua"}]
