# Reaper — Bandits Defeated
# Run as player whose bandits were killed

scoreboard players set @s rp.band_active 0

# Reward: bonus renown for protecting yourself
scoreboard players add @s rp.renown 50
execute if score @s rp.renown matches 5001.. run scoreboard players set @s rp.renown 5000

tellraw @s [{text:"  ",color:"dark_gray"},{text:"⚔ ",color:"green"},{text:"The bandits have been driven off!",color:"green"}]
tellraw @s [{text:"    ",color:"dark_gray"},{text:"+50 Renown",color:"gray",italic:true}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.5 1.2
