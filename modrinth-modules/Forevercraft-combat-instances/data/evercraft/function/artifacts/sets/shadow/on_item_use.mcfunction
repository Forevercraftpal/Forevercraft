# Shadow - Item Use Handler (Shadow Horn)
advancement revoke @s only evercraft:artifacts/sets/shadow_item_use
execute if entity @s[tag=shadow_4pc] run function evercraft:artifacts/sets/shadow/assassinate
execute unless entity @s[tag=shadow_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Shadow set (4pc) to use Assassinate!",color:"red"}]
