# Guild — Macro: announce rank promotion
$tellraw @s [{text:"[Guild] ",color:"green"},{text:"You have been promoted to ",color:"gold"},{text:"$(rank_name)",color:"green",bold:true},{text:"!",color:"gold"}]
$execute as @a[scores={ec.guild_id=1..}] unless entity @s[tag=ec.guild_self] run tellraw @s [{text:"[Guild] ",color:"green"},{selector:"@p[tag=ec.guild_self]"},{text:" has been promoted to ",color:"gold"},{text:"$(rank_name)",color:"green"},{text:"!",color:"gold"}]
