# Protein drop: Sheep → Cured Mutton
advancement revoke @s only evercraft:cooking/protein/kill_sheep

# ~25% chance to drop protein
execute store result score #ck_roll ec.temp run random value 1..100
execute if score #ck_roll ec.temp matches ..25 run loot give @s loot evercraft:cooking/ingredients/cured_mutton
execute if score #ck_roll ec.temp matches ..25 run tellraw @s [{text:"[Cuisine] ",color:"gold"},{text:"You obtained ",color:"gray"},{text:"Cured Mutton",color:"green"},{text:"!",color:"gray"}]
execute if score #ck_roll ec.temp matches ..25 run scoreboard players add @s adv.stat_cook 1
execute if score #ck_roll ec.temp matches ..25 run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.2
