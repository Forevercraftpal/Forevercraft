# Friend Gift — Macro: notify recipient of gift
# Macro args: sender_cid, tier_name, tier_color
tellraw @s ""
$tellraw @s [{text:"[Forevercraft] ",color:"gold"},{selector:"@a[scores={companion.id=$(sender_cid)},limit=1]",color:"yellow"},{text:" sent you a ",color:"light_purple"},{text:"$(tier_name) Crate",color:"$(tier_color)",bold:true},{text:"!",color:"light_purple"}]
tellraw @s ""
