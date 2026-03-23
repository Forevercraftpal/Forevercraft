# Reaper — Announce title change (called when tier changes)
# Run as player. #rp_old_tier and @s rp.tier contain old/new values.

# Reached Villain (tier -5)
execute if score @s rp.tier matches -5 unless score #rp_old_tier rp.temp matches -5 run title @s subtitle {text:"You have become a Villain",color:"dark_red",italic:true}
execute if score @s rp.tier matches -5 unless score #rp_old_tier rp.temp matches -5 run title @s title [{text:"☠ ",color:"dark_red"},{text:"VILLAIN",color:"dark_red",bold:true},{text:" ☠",color:"dark_red"}]
execute if score @s rp.tier matches -5 unless score #rp_old_tier rp.temp matches -5 run tellraw @a [{text:"  ☠ ",color:"dark_red"},{selector:"@s",color:"red",bold:true},{text:" has embraced the path of villainy!",color:"dark_red"}]
execute if score @s rp.tier matches -5 unless score #rp_old_tier rp.temp matches -5 run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.3 0.5

# Reached Peacemonger (tier +5)
execute if score @s rp.tier matches 5 unless score #rp_old_tier rp.temp matches 5 run title @s subtitle {text:"You have become a Peacemonger",color:"green",italic:true}
execute if score @s rp.tier matches 5 unless score #rp_old_tier rp.temp matches 5 run title @s title [{text:"✦ ",color:"green"},{text:"PEACEMONGER",color:"green",bold:true},{text:" ✦",color:"green"}]
execute if score @s rp.tier matches 5 unless score #rp_old_tier rp.temp matches 5 run tellraw @a [{text:"  ✦ ",color:"green"},{selector:"@s",color:"green",bold:true},{text:" is now a beacon of peace!",color:"green"}]
execute if score @s rp.tier matches 5 unless score #rp_old_tier rp.temp matches 5 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1.0 1.0

# Any other tier change — subtle chat notification to the player
execute unless score @s rp.tier = #rp_old_tier rp.temp unless score @s rp.tier matches -5 unless score @s rp.tier matches 5 if score @s rp.tier matches ..-1 run tellraw @s [{text:"  ",color:"dark_gray"},{text:"Your reputation shifts... you are now known as a ",color:"gray",italic:true},{text:"",color:"red"},{score:{name:"@s",objective:"rp.tier"},color:"red"},{text:"",color:"gray"}]

# Returned to neutral from negative
execute if score @s rp.tier matches 0 if score #rp_old_tier rp.temp matches ..-1 run tellraw @s [{text:"  ",color:"dark_gray"},{text:"Your infamy has faded. You are ",color:"gray",italic:true},{text:"Neutral",color:"white"},{text:" once more.",color:"gray",italic:true}]

# Returned to neutral from positive
execute if score @s rp.tier matches 0 if score #rp_old_tier rp.temp matches 1.. run tellraw @s [{text:"  ",color:"dark_gray"},{text:"Your renown has faded. You are ",color:"gray",italic:true},{text:"Neutral",color:"white"},{text:" once more.",color:"gray",italic:true}]
