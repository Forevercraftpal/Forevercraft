# Give prestige token (reuses same prestige token item)
loot give @s loot evercraft:weapon_mastery/prestige_token

# Announcement
tellraw @s [{text:"[Armor Mastery] ",color:"gold"},{text:"MAXIMUM POWER! ",color:"light_purple",bold:true},{text:"You received a ",color:"yellow"},{text:"Prestige Token",color:"gold",bold:true},{text:"!",color:"yellow"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1.0 1.0
