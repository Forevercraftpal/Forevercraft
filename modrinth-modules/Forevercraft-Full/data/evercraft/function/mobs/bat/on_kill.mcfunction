# Bat Kill — 40% chance of Poison I for 5 seconds ("bat bit back")
# + 5% chance to drop Crystalized Dream Droppings
# Triggered by advancement: evercraft:mobs/bat/on_kill

# Revoke so it can trigger again
advancement revoke @s only evercraft:mobs/bat/on_kill

# 40% chance: roll 1-100, if 1-40 then poison
execute store result score #rand ec.var run random value 1..100
execute if score #rand ec.var matches 1..40 run effect give @s minecraft:poison 5 0 false
execute if score #rand ec.var matches 1..40 run tellraw @s [{text:"The bat bit you as it died!",color:"dark_green"}]

# 5% chance to drop Crystalized Dream Droppings
execute if predicate {"condition":"minecraft:random_chance","chance":0.05} run loot give @s loot evercraft:items/crystalized_dream_droppings
