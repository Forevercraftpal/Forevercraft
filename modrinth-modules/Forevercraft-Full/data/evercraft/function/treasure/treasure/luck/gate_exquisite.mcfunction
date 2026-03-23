# Gate Exquisite Mining Treasure — requires nearest player Dream Rate >= 15
# If insufficient, swap tag to ornate so it spawns ornate treasure instead
# @s = marker entity at treasure location

# Check nearest player's dream rate (scale 10: 15.0 = 150)
execute as @p store result score @s ec.temp run attribute @s luck get 10
execute unless score @p ec.temp matches 150.. run tag @s remove ec.exquisite
execute unless score @p ec.temp matches 150.. run tag @s add ec.ornate
execute unless score @p ec.temp matches 150.. as @p run tellraw @s [{text:"✦ ",color:"dark_purple"},{text:"An exquisite treasure dimmed... your dreams aren't strong enough yet.",color:"gray",italic:true}]
execute unless score @p ec.temp matches 150.. as @p run tellraw @s [{text:"  Requires ",color:"gray"},{text:"Dream Rate 15",color:"gold",bold:true},{text:" for Exquisite mining treasures.",color:"gray"}]
