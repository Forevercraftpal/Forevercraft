# Buddy Mount Speed — First Breath Notification
# @s = player (first time this ride session)

tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Your mount slows down to catch its breath!",color:"yellow"}]
playsound minecraft:entity.horse.breathe master @s ~ ~ ~ 0.8 0.8
