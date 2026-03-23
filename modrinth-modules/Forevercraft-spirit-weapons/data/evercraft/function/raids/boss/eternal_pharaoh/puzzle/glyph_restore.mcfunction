# The Eternal Pharaoh — Restore Armor After Glyph Reveal
# Guard: only restore if Eternal Pharaoh is still the active boss
execute unless score #rd_active ec.var matches 1 run return 0
execute unless score #rd_boss_id ec.var matches 9 run return 0
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run attribute @s armor modifier add evercraft:rd_boss/base 10 add_value
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run effect clear @s glowing
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The Pharaoh's defenses reform.",color:"gold"}]
