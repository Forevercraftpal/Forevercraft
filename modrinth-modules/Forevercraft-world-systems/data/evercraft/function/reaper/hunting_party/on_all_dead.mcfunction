# Reaper — Hunting Party Defeated
# Run as player whose hunt party was killed

scoreboard players set @s rp.hunt_active 0

# Reward: reduce infamy by 200 (fighting back earns some redemption)
scoreboard players remove @s rp.infamy 200
execute if score @s rp.infamy matches ..-1 run scoreboard players set @s rp.infamy 0

# Renown bonus for defeating them
scoreboard players add @s rp.renown 50
execute if score @s rp.renown matches 5001.. run scoreboard players set @s rp.renown 5000

tellraw @s [{text:"  ",color:"dark_gray"},{text:"⚔ ",color:"dark_aqua"},{text:"The bounty hunters have been defeated!",color:"dark_aqua"}]
tellraw @s [{text:"    ",color:"dark_gray"},{text:"-200 Infamy · +50 Renown",color:"gray",italic:true}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.5 1.2
