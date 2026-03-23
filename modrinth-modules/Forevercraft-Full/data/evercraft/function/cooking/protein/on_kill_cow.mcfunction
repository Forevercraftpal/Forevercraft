# Protein drop: Cow → Aged Venison
advancement revoke @s only evercraft:cooking/protein/kill_cow

# ~25% chance to drop protein
execute store result score #ck_roll ec.temp run random value 1..100
execute if score #ck_roll ec.temp matches ..25 run loot give @s loot evercraft:cooking/ingredients/aged_venison
execute if score #ck_roll ec.temp matches ..25 run tellraw @s [{text:"[Cuisine] ",color:"gold"},{text:"You obtained ",color:"gray"},{text:"Aged Venison",color:"green"},{text:"!",color:"gray"}]
execute if score #ck_roll ec.temp matches ..25 run scoreboard players add @s adv.stat_cook 1
execute if score #ck_roll ec.temp matches ..25 run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.2
