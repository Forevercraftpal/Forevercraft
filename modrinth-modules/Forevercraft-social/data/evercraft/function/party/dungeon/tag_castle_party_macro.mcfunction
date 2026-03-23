# Tag party members for castle (macro)
# Arg: pid

$execute as @a[scores={ec.party_id=$(pid)},distance=..48] run tag @s add ic.player
$execute as @a[scores={ec.party_id=$(pid)},distance=..48] run scoreboard players set @s ic.deaths 0
$execute as @a[scores={ec.party_id=$(pid)},distance=..48] run scoreboard players set @s ic.coins 0
$tellraw @a[scores={ec.party_id=$(pid)},distance=..48] [{text:"[Castle] ",color:"dark_red"},{text:"Your party has entered the Infinite Castle!",color:"red"}]
