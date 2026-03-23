# Lucid Claim — Refresh artifact display text
# Shows ✓ for collected artifacts and ☆ for uncollected
# Run as @s = player

execute if entity @s[advancements={evercraft:artifacts/collected/the_starless_night=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_the_starless_night,distance=..5,limit=1] text set value [{text:"\u2713 ",color:"green"},{text:"The Starless Night",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/the_starless_night=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_the_starless_night,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"The Starless Night",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/shooting_star=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_shooting_star,distance=..5,limit=1] text set value [{text:"\u2713 ",color:"green"},{text:"Shooting Star",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/shooting_star=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_shooting_star,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Shooting Star",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/dreamcast_compass=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_dreamcast_compass,distance=..5,limit=1] text set value [{text:"\u2713 ",color:"green"},{text:"Dreamcast Compass",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dreamcast_compass=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_dreamcast_compass,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Dreamcast Compass",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/hero_helmet=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_hero_helmet,distance=..5,limit=1] text set value [{text:"\u2713 ",color:"green"},{text:"Hero's Helmet",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/hero_helmet=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_hero_helmet,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Hero's Helmet",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/hero_chestplate=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_hero_chestplate,distance=..5,limit=1] text set value [{text:"\u2713 ",color:"green"},{text:"Hero's Chestplate",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/hero_chestplate=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_hero_chestplate,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Hero's Chestplate",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/hero_leggings=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_hero_leggings,distance=..5,limit=1] text set value [{text:"\u2713 ",color:"green"},{text:"Hero's Leggings",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/hero_leggings=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_hero_leggings,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Hero's Leggings",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/hero_boots=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_hero_boots,distance=..5,limit=1] text set value [{text:"\u2713 ",color:"green"},{text:"Hero's Boots",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/hero_boots=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_hero_boots,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Hero's Boots",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/robot_dancers_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_robot_dancers_sword,distance=..5,limit=1] text set value [{text:"\u2713 ",color:"green"},{text:"Robot Dancer's Sword",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/robot_dancers_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_robot_dancers_sword,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Robot Dancer's Sword",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/droid_dancers_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_droid_dancers_sword,distance=..5,limit=1] text set value [{text:"\u2713 ",color:"green"},{text:"Droid Dancer's Sword",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/droid_dancers_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ArtI_droid_dancers_sword,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Droid Dancer's Sword",color:"gold"}]
