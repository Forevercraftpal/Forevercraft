# Apply speed upgrade to horse
# Runs as the player who consumed the item
# OPT: Resolve nearest tamed horse once (was 5 entity scans)

execute at @s as @e[type=horse,distance=..8,limit=1,sort=nearest,nbt={Tame:1b}] run function evercraft:items/horse_upgrades/speed_apply_horse

# Display message
title @s actionbar {text:"Horse speed increased!",color:"aqua",bold:true}

# Mount Bond: +50 XP for feeding upgrade carrot
execute if score @s ec.mt_bond matches 1.. run scoreboard players add @s ec.mt_bond 50
execute if score @s ec.mt_bond matches 1.. run tellraw @s [{text:"  "},{text:"+50 Mount Bond XP",color:"green"}]

# Revoke advancement for reuse
advancement revoke @s only evercraft:items/horse_upgrades/speed_carrot_used
