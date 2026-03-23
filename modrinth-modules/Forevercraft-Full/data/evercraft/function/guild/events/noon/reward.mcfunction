# Guild Event — Daily Noon Gathering: Reward
# @s = qualifying player (50%+ presence)

# Grant ~7 levels worth of XP
experience add @s 7 levels

# Grant 1 Forever Coin
scoreboard players add @s ec.coins 1

# Effects
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.2
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.5 1.5

# Notify
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Guild Gathering Reward: ",color:"gold"},{text:"+7 Levels XP",color:"green"},{text:" + ",color:"gray"},{text:"+1 Forever Coin",color:"#E0B0FF"}]
