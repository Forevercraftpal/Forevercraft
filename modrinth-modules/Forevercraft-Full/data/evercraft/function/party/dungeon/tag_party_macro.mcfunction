# Tag party members for dungeon (macro)
# Arg: pid

$execute as @a[scores={ec.party_id=$(pid)},distance=..48] run tag @s add dg.player
$execute as @a[scores={ec.party_id=$(pid)},distance=..48] run scoreboard players set @s dg.deaths 0
$tellraw @a[scores={ec.party_id=$(pid)},distance=..48] [{text:"[Dungeon] ",color:"dark_purple"},{text:"Your party has entered the dungeon!",color:"light_purple"}]
