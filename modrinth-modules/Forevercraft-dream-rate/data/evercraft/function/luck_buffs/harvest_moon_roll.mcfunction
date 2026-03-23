# Roll for Harvest Moon - 1/8 chance during full moon
execute store result score #harvest_roll ec.var run random value 1..8
execute unless score #harvest_roll ec.var matches 1 run return 0

# Harvest Moon activated!
scoreboard players set #ec_harvest_moon ec.var 1
tellraw @a [{text:""},{text:"The moon is invigorating the soil and the crops are glowing!",color:"gold",bold:true,italic:true}]
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.5
gamerule minecraft:random_tick_speed 15

# Achievement: Harvest moon seen (bit 2) — add 2 if bit not set
execute as @a[scores={ach.moons_seen=0}] run scoreboard players add @s ach.moons_seen 2
execute as @a[scores={ach.moons_seen=1}] run scoreboard players add @s ach.moons_seen 2
execute as @a[scores={ach.moons_seen=4}] run scoreboard players add @s ach.moons_seen 2
execute as @a[scores={ach.moons_seen=5}] run scoreboard players add @s ach.moons_seen 2
