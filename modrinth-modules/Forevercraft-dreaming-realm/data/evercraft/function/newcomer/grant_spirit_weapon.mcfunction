# Newcomer: Grant chosen spirit weapon based on ec.newcomer_pick trigger value
# @s = player who picked, ec.newcomer_pick = spirit weapon ID (1-14, excluding DS)

# Map trigger value to spirit weapon loot table
execute if score @s ec.newcomer_pick matches 1 run loot give @s loot evercraft:spirit/hollow_fangs
execute if score @s ec.newcomer_pick matches 2 run loot give @s loot evercraft:spirit/voidpiercer
execute if score @s ec.newcomer_pick matches 3 run loot give @s loot evercraft:spirit/firebrand
execute if score @s ec.newcomer_pick matches 4 run loot give @s loot evercraft:spirit/zephyr_edge
execute if score @s ec.newcomer_pick matches 5 run loot give @s loot evercraft:spirit/nite
execute if score @s ec.newcomer_pick matches 6 run loot give @s loot evercraft:spirit/whispering_spear
execute if score @s ec.newcomer_pick matches 7 run loot give @s loot evercraft:spirit/ashcrown_mace
execute if score @s ec.newcomer_pick matches 8 run loot give @s loot evercraft:spirit/ellegaard_trident
execute if score @s ec.newcomer_pick matches 9 run loot give @s loot evercraft:spirit/pharaoh_fist
execute if score @s ec.newcomer_pick matches 10 run loot give @s loot evercraft:spirit/lifewoven_branch
execute if score @s ec.newcomer_pick matches 11 run loot give @s loot evercraft:spirit/sabrewing
execute if score @s ec.newcomer_pick matches 12 run loot give @s loot evercraft:spirit/dragonheart_sword
execute if score @s ec.newcomer_pick matches 13 run loot give @s loot evercraft:spirit/bulwark_shield
execute if score @s ec.newcomer_pick matches 14 run loot give @s loot evercraft:spirit/royal_trident

# Mark as claimed so the menu doesn't show again
tag @s add ec.spirit_chosen

# Reset trigger
scoreboard players set @s ec.newcomer_pick 0
scoreboard players enable @s ec.newcomer_pick

# Effects
playsound minecraft:entity.warden.emerge master @s ~ ~ ~ 0.6 1.5
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.0
particle totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.15 30

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your spirit weapon has been bestowed! Equip it to begin your journey.",color:"green"}]
