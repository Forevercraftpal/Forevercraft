# Friend Title — Final notification tellraw
# @s = target player
# Reads: temp.pending.from_cid, temp.notify_title_display
$tellraw @s [{text:"[Forevercraft] ",color:"gold"},{selector:"@a[scores={companion.id=$(from_cid)},limit=1]",color:"yellow"},{text:" sees you as their ",color:"light_purple"},{text:"$(notify_title_display)",color:"gold",bold:true},{text:"! Title unlocked.",color:"light_purple"}]
