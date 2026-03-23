# Showcase — Raycast header (macro)
# $(target_cid)

tellraw @s [{text:"  "},{"text":"━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"}]
$tellraw @s [{text:"  "},{"text":"\\u2606 ","color":"gold"},{"selector":"@a[scores={companion.id=$(target_cid)},limit=1]","color":"white","bold":true},{"text":"'s Showcase","color":"gold"}]
tellraw @s [{text:"  "},{"text":"━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"}]
