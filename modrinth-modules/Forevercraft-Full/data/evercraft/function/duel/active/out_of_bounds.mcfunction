# Duel — Out of Bounds Warning (runs as the offending duelist)

scoreboard players add @s ec.duel_warn 1

# Warning 1
execute if score @s ec.duel_warn matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Warning! Return to the duel area! (1/3)",color:"red"}]
execute if score @s ec.duel_warn matches 1 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5

# Warning 2
execute if score @s ec.duel_warn matches 100 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Warning! You will forfeit if you don't return! (2/3)",color:"red"}]
execute if score @s ec.duel_warn matches 100 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5

# Warning 3 = forfeit (after ~200 ticks / 10 seconds out of bounds)
execute if score @s ec.duel_warn matches 200.. run function evercraft:duel/active/forfeit
