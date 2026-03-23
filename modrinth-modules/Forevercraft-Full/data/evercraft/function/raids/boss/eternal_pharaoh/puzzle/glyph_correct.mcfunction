# The Eternal Pharaoh — Correct Pillar Hit!
# Boss's true form revealed — 75% damage reduction removed for 10 seconds

# Remove boss armor (reveals true form)
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run attribute @s armor modifier remove evercraft:rd_boss/base

# Schedule armor restore in 10 seconds
schedule function evercraft:raids/boss/eternal_pharaoh/puzzle/glyph_restore 200t

# VFX
execute as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run particle minecraft:end_rod ~ ~1 ~ 1 1 1 0.1 30
execute as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run effect give @s glowing 10 0 true
playsound minecraft:entity.player.levelup master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.5

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"CORRECT! The Pharaoh's true form is revealed! Full damage for 10 seconds!",color:"green",bold:true}]
