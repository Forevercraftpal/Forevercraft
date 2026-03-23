# Artifact Collection — Refresh Exquisite Tools
# Checks advancements and updates display text
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/ember_fishing_rod=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_ember_fishing_rod,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Infernal Hook",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ember_fishing_rod=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ArtI_ember_fishing_rod,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/ember_fishing_rod=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ArtI_ember_fishing_rod,limit=1,sort=nearest] text set value [{text:"\u2606 ",color:"yellow"},{text:"Infernal Hook",color:"white"}]
