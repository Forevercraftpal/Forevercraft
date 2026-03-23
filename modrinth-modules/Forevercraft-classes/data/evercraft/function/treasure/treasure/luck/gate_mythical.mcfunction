# Gate Mythical Mining Treasure — requires nearest player Dream Rate >= 25
# If insufficient, swap tag to exquisite so it spawns exquisite treasure instead
# @s = marker entity at treasure location

# Check nearest player's dream rate (scale 10: 25.0 = 250)
execute as @p store result score @s ec.temp run attribute @s luck get 10
execute unless score @p ec.temp matches 250.. run tag @s remove ec.mythical
execute unless score @p ec.temp matches 250.. run tag @s add ec.exquisite
execute unless score @p ec.temp matches 250.. as @p run tellraw @s [{text:"★ ",color:"gold"},{text:"A mythical treasure flickered but dimmed... your dreams aren't powerful enough.",color:"gray",italic:true}]
execute unless score @p ec.temp matches 250.. as @p run tellraw @s [{text:"  Requires ",color:"gray"},{text:"Dream Rate 25",color:"gold",bold:true},{text:" for Mythical mining treasures.",color:"gray"}]
