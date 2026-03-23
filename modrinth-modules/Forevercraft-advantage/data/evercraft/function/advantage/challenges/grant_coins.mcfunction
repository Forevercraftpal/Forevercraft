$scoreboard players add @s ec.coins $(chal_coins)
$scoreboard players add #rm_coins ec.var $(chal_coins)
$tellraw @s [{text:"  ★ ",color:"#E0B0FF"},{text:"+$(chal_coins) Forever Coins",color:"#E0B0FF"}]
