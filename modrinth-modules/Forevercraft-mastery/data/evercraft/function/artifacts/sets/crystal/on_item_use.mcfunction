# Crystal - Item Use Handler (Prism Horn)
advancement revoke @s only evercraft:artifacts/sets/crystal_item_use
execute if entity @s[tag=crystal_4pc] run function evercraft:artifacts/sets/crystal/crystal_shatter
execute unless entity @s[tag=crystal_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Crystal set (4pc) to use Crystal Shatter!",color:"red"}]
