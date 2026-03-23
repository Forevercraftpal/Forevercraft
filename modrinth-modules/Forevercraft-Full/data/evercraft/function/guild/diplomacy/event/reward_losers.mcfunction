# Guild Diplomacy — Apply loss to a losing player
# @s = player on the losing team

scoreboard players add @s ec.gd_losses 1

# Update title (only assigns loser title if no winner title active)
function evercraft:guild/diplomacy/titles/check_loss

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Defeated.",color:"gray"},{text:" Better luck next time.",color:"gray"}]
