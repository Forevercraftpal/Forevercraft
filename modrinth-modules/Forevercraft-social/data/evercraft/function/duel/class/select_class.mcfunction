# Class Duel — Select Class (runs as challenger)
# Trigger values 10-23 map to class IDs 1-14
# ec.duel value: 10=Rogue(1), 11=Berserker(2), 12=Dancer(3), 13=Striker(4),
#   14=Knight(5), 15=Healer(6), 16=Beastlord(7), 17=Javelin(8),
#   18=Hoplite(9), 19=Archer(10), 20=Hunter(11), 21=Shield(12),
#   22=Knight-alt(13), 23=DualSwords(14)

# Compute class ID from trigger value (trigger - 9 = class_id)
scoreboard players operation @s ec.duel_class = @s ec.duel
scoreboard players remove @s ec.duel_class 9

# Store class for both players
execute as @a[tag=duel.pending_target] run scoreboard players operation @s ec.duel_class = @a[tag=duel.challenger,limit=1] ec.duel_class

# Send invite to target with class info
execute as @a[tag=duel.pending_target] run function evercraft:duel/class/receive
