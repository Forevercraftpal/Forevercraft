# Classes Refresh — Beastlord Spears
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/boneclub=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_boneclub,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Bone Club",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/boneclub=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_boneclub,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/boneclub=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_boneclub,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Bone Club",color:"white"}]

execute if entity @s[advancements={evercraft:artifacts/collected/lance=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_lance,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Lance",color:"dark_blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/lance=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_lance,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/lance=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_lance,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Lance",color:"dark_blue"}]

execute if entity @s[advancements={evercraft:artifacts/collected/battlestaff=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_battlestaff,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Battlestaff",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/battlestaff=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_battlestaff,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/battlestaff=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_battlestaff,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Battlestaff",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/bone_cudgel=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_bone_cudgel,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Bone Cudgel",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/bone_cudgel=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_bone_cudgel,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/bone_cudgel=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_bone_cudgel,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Bone Cudgel",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/glaive=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_glaive,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Glaive",color:"dark_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/glaive=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_glaive,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/glaive=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_glaive,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Glaive",color:"dark_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/infinity_lance=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_infinity_lance,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Infinity Lance",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/infinity_lance=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_infinity_lance,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/infinity_lance=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_infinity_lance,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Infinity Lance",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/gungnir_spear=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_gungnir_spear,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Gungnir Spear",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/gungnir_spear=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_gungnir_spear,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/gungnir_spear=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_gungnir_spear,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Gungnir Spear",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/longinus=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_longinus,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Longinus",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/longinus=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_longinus,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/longinus=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_longinus,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Longinus",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/dragonmaster_lance=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonmaster_lance,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Dragonslayer Lance",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_lance=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonmaster_lance,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_lance=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonmaster_lance,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Dragonslayer Lance",color:"gold"}]

# Class Affinity display
function evercraft:affinity/gui/show_affinity {abbrev:"bl", y:"1.15"}
