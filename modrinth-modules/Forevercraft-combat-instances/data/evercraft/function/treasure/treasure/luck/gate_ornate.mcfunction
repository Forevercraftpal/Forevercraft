# Gate Ornate Mining Treasure — requires nearest player Dream Rate >= 5
# If insufficient, swap tag to rare so it spawns rare treasure instead
# @s = marker entity at treasure location

# Check nearest player's dream rate (scale 10: 5.0 = 50)
execute as @p store result score @s ec.temp run attribute @s luck get 10
execute unless score @p ec.temp matches 50.. run tag @s remove ec.ornate
execute unless score @p ec.temp matches 50.. run tag @s add ec.rare
execute unless score @p ec.temp matches 50.. as @p run tellraw @s [{text:"✦ ",color:"dark_purple"},{text:"An ornate treasure dimmed... your dreams aren't strong enough yet.",color:"gray",italic:true}]
execute unless score @p ec.temp matches 50.. as @p run tellraw @s [{text:"  Requires ",color:"gray"},{text:"Dream Rate 5",color:"gold",bold:true},{text:" for Ornate mining treasures.",color:"gray"}]
