# Prestige — Check Eligibility
# Reads #pres_level and #pres_current from triggers.mcfunction
# Must be level 25 AND prestige < 3

# Must be level 25
execute unless score #pres_level adv.temp matches 25 run return run tellraw @s [{text:"✦ ",color:"gold"},{text:"You need level 25 to prestige! Current: Lv.",color:"red"},{score:{name:"#pres_level",objective:"adv.temp"},color:"gold"}]

# Must be below prestige 3
execute if score #pres_current adv.temp matches 3.. run return run tellraw @s [{text:"✦ ",color:"gold"},{text:"This tree is already at max prestige (★★★)!",color:"red"}]

# Eligible — execute prestige
function evercraft:advantage/prestige/do_prestige
