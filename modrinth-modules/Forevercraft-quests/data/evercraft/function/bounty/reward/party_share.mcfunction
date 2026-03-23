# Bounty Reward — Party Share (50% of base rewards)
# Run as nearby party member (not the bounty killer)

# Flat party share: 4 emeralds + 75 XP + 100 Rep
give @s emerald 4
experience add @s 75 points
scoreboard players add @s ec.village_rep 100

tellraw @s [{text:"  [Party Bounty] ",color:"red"},{text:"Your ally completed a bounty! ",color:"gold"},{text:"+4 emeralds, +75 XP, +100 rep",color:"yellow"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.8 1.2
