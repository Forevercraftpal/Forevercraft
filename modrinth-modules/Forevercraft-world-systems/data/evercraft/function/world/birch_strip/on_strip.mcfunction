# Birch Stripping — 10% chance to drop 1 paper
# Triggered by advancement: evercraft:world/birch_strip

# Revoke so it can trigger again
advancement revoke @s only evercraft:world/birch_strip

# 10% chance: roll 1-10, drop paper on 1
execute store result score #rand ec.var run random value 1..10
execute if score #rand ec.var matches 1 run give @s minecraft:paper 1
execute if score #rand ec.var matches 1 run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.5
execute if score #rand ec.var matches 1 run tellraw @s [{text:"You peeled some paper from the birch bark!",color:"#D4C4A8"}]
