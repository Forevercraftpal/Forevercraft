# Weekly Challenge Bonus — Award extra rewards when completing a challenge from the featured tree
# @s = player who just completed a challenge
# Called from complete.mcfunction when tree matches weekly tree

# Already claimed this week?
execute if score @s adv.weekly_done matches 1 run return 0

# Mark as done
scoreboard players set @s adv.weekly_done 1

# Bonus rewards: 25 coins, 20 XP levels, 100 guild contribution, + crate
scoreboard players add @s ec.coins 25
experience add @s 20 levels

# Guild contribution (only if in a guild)
execute if score @s ec.guild_id matches 1.. run function evercraft:guild/contribution/add {amount:100}

# Random crate (40% common, 25% uncommon, 20% rare, 10% ornate, 5% exquisite)
execute store result score #wk_crate adv.temp run random value 1..100
execute if score #wk_crate adv.temp matches 1..40 run loot give @s loot evercraft:crates/items/common
execute if score #wk_crate adv.temp matches 41..65 run loot give @s loot evercraft:crates/items/uncommon
execute if score #wk_crate adv.temp matches 66..85 run loot give @s loot evercraft:crates/items/rare
execute if score #wk_crate adv.temp matches 86..95 run loot give @s loot evercraft:crates/items/ornate
execute if score #wk_crate adv.temp matches 96..100 run loot give @s loot evercraft:crates/items/exquisite

# Celebration
tellraw @s [{text:""},{"text":"✦ ","color":"gold","bold":true},{"text":"Weekly Challenge Bonus!","color":"gold","bold":true},{"text":" ✦","color":"gold","bold":true}]
tellraw @s [{"text":"  +25 Forever Coins, +20 XP Levels, +100 Guild Contribution, + Crate!","color":"yellow"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.0
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.1 30
