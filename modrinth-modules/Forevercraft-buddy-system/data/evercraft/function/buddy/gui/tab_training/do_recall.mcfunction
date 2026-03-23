# Tab 4: Do Recall — Teleport bonded mount to player
# @s = player with bonded mount (tier 3+)
# Replaces the old whistle recall

# Find bonded mount by UUID
scoreboard players operation #bd_mt_u0 ec.temp = @s ec.mt_uuid0
scoreboard players operation #bd_mt_u1 ec.temp = @s ec.mt_uuid1

# Teleport mount to player
execute at @s as @e[type=minecraft:horse,distance=..9999,limit=1] run function evercraft:buddy/gui/tab_training/try_recall_tp

tellraw @s [{text:"[Training] ",color:"#8B4513"},{text:"Your mount has been recalled!",color:"green"}]
playsound minecraft:entity.horse.ambient master @s ~ ~ ~ 1 1
