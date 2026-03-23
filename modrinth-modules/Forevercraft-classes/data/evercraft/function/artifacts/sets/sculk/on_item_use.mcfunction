# Sculk - Item Use Handler (Sculk Horn)
advancement revoke @s only evercraft:artifacts/sets/sculk_item_use
execute if entity @s[tag=sculk_4pc] run function evercraft:artifacts/sets/sculk/sonic_boom
execute unless entity @s[tag=sculk_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You need the full Sculk set (4pc) to use Sonic Boom!",color:"red"}]
