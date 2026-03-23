# Ecodex — Refresh Bestiary Claims Display
# Run as: player, at player

# Recount
scoreboard players set @s ec.claim_bst 0
function evercraft:claim/count_bestiary

# Update count display
execute if score @s ec.claim_bst matches 0 as @e[type=text_display,tag=Ec.BstCount,limit=1,sort=nearest] run data modify entity @s text set value [{"text":"All rewards claimed!","color":"green"}]
execute if score @s ec.claim_bst matches 1.. as @e[type=text_display,tag=Ec.BstCount,limit=1,sort=nearest] run data modify entity @s text set value [{"score":{"name":"@p[tag=Adv.InMenu]","objective":"ec.claim_bst"},"color":"yellow"},{"text":" unclaimed reward(s)","color":"gold"}]

# Update button
execute if score @s ec.claim_bst matches 0 as @e[type=text_display,tag=Ec.BstClaimBtn,limit=1,sort=nearest] run data modify entity @s text set value {"text":"\u2713 Complete","color":"dark_green"}
execute if score @s ec.claim_bst matches 1.. as @e[type=text_display,tag=Ec.BstClaimBtn,limit=1,sort=nearest] run data modify entity @s text set value [{"text":"\u2726 ","color":"gold"},{"text":"Claim All Bestiary Rewards","color":"green","bold":true}]
