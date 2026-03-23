# Newcomer: Grant chosen spirit tool based on ec.newcomer_pick trigger value
# @s = player who picked, ec.newcomer_pick = spirit tool path ID (15-20)

# Map trigger value to spirit tool loot table
execute if score @s ec.newcomer_pick matches 15 run loot give @s loot evercraft:spirit_tool/earthsong
execute if score @s ec.newcomer_pick matches 16 run loot give @s loot evercraft:spirit_tool/bloomweaver
execute if score @s ec.newcomer_pick matches 17 run loot give @s loot evercraft:spirit_tool/dustwalker
execute if score @s ec.newcomer_pick matches 18 run loot give @s loot evercraft:spirit_tool/heartwood
execute if score @s ec.newcomer_pick matches 19 run loot give @s loot evercraft:spirit_tool/tidecaller
execute if score @s ec.newcomer_pick matches 20 run loot give @s loot evercraft:spirit_tool/silkgrasp

# Mark as claimed so the menu doesn't show again
tag @s add ec.spirit_chosen

# Reset trigger
scoreboard players set @s ec.newcomer_pick 0
scoreboard players enable @s ec.newcomer_pick

# Effects
playsound minecraft:entity.warden.emerge master @s ~ ~ ~ 0.6 1.5
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.0
particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.15 30

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your spirit tool has been bestowed! Equip it to begin your journey.",color:"green"}]
