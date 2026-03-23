# Blood - Item Use Handler (Blood Horn)
advancement revoke @s only evercraft:artifacts/sets/blood_item_use
execute if entity @s[tag=blood_4pc] run function evercraft:artifacts/sets/blood/crimson_burst
execute unless entity @s[tag=blood_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Blood set (4pc) to use Crimson Burst!",color:"red"}]
