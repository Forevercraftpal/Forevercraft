# Infinite Castle — Tally Summary Line (macro)
# Args: tier (display name), color
# Reads count from storage evercraft:castle tally.count

$tellraw @s [{text:"  ",color:"dark_red"},{text:"$(tier)",color:"$(color)"},{text:" x",color:"gray"},{storage:"evercraft:castle",nbt:"tally.count",color:"$(color)"}]
