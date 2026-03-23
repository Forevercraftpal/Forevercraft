# Infinite Castle — Give milestone coins (macro)
# Args: coins (amount), floor (floor number)

$scoreboard players add @s ec.coins $(coins)
$scoreboard players add #rm_coins ec.var $(coins)
$tellraw @s [{"text":"[Castle] ","color":"dark_red"},{"text":"Floor $(floor) Milestone! ","color":"gold","bold":true},{"text":"+$(coins) Forever Coins","color":"yellow"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.5
