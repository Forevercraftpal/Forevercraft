# Journal — Refresh Region Bonuses Display
# 4 regions: unlocked = green checkmark, locked = gray ✗
# Run as the player

# Overworld Surface
execute if score @s jn.region_ow matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnRg0,limit=1,sort=nearest] text set value {text:"\u2713 Unlocked!",color:"green"}
execute unless score @s jn.region_ow matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnRg0,limit=1,sort=nearest] text set value {text:"\u2717 Locked",color:"dark_gray"}

# Overworld Caves
execute if score @s jn.region_cave matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnRg1,limit=1,sort=nearest] text set value {text:"\u2713 Unlocked!",color:"green"}
execute unless score @s jn.region_cave matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnRg1,limit=1,sort=nearest] text set value {text:"\u2717 Locked",color:"dark_gray"}

# Nether
execute if score @s jn.region_neth matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnRg2,limit=1,sort=nearest] text set value {text:"\u2713 Unlocked!",color:"green"}
execute unless score @s jn.region_neth matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnRg2,limit=1,sort=nearest] text set value {text:"\u2717 Locked",color:"dark_gray"}

# The End
execute if score @s jn.region_end matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnRg3,limit=1,sort=nearest] text set value {text:"\u2713 Unlocked!",color:"green"}
execute unless score @s jn.region_end matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnRg3,limit=1,sort=nearest] text set value {text:"\u2717 Locked",color:"dark_gray"}
