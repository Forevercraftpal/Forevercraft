# Black Market Quick-Sell — Announce sale (macro)
$tellraw @s [{text:"  Sold ","color":"gray"},$(item_name),{text:" for ","color":"gray"},{"score":{"name":"#qs_price","objective":"ec.temp"},"color":"gold","bold":true},{"text":" Forever Coins","color":"gold"},{"text":" | Balance: ","color":"dark_gray"},{"score":{"name":"@s","objective":"ec.coins"},"color":"gold"}]
