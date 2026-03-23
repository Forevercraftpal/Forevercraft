# Bestiary Stages — On Stage Up
# Called when #new_bs_stage bs.temp > #bs_stage bs.temp (stage increased)
# #new_bs_stage bs.temp holds the new stage number (1-7)
# Run as player

# Stage-colored announcement
execute if score #new_bs_stage bs.temp matches 1 run tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"Stage up! ","color":"green"},{"text":"Common","color":"white"},{"text":" — Reward available! Open the Bestiary to claim.","color":"gray"}]
execute if score #new_bs_stage bs.temp matches 2 run tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"Stage up! ","color":"green"},{"text":"Uncommon","color":"green"},{"text":" — Reward available! Open the Bestiary to claim.","color":"gray"}]
execute if score #new_bs_stage bs.temp matches 3 run tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"Stage up! ","color":"green"},{"text":"Rare","color":"aqua"},{"text":" — Reward available! Open the Bestiary to claim.","color":"gray"}]
execute if score #new_bs_stage bs.temp matches 4 run tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"Stage up! ","color":"green"},{"text":"Ornate","color":"light_purple"},{"text":" — Reward available! Open the Bestiary to claim.","color":"gray"}]
execute if score #new_bs_stage bs.temp matches 5 run tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"Stage up! ","color":"green"},{"text":"Exquisite","color":"gold"},{"text":" — Reward available! Open the Bestiary to claim.","color":"gray"}]
execute if score #new_bs_stage bs.temp matches 6 run tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"Stage up! ","color":"green"},{"text":"Mythical","color":"red"},{"text":" — Reward available! Open the Bestiary to claim.","color":"gray"}]
execute if score #new_bs_stage bs.temp matches 7 run tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"Stage up! ","color":"green"},{"text":"Spirit","color":"dark_purple","bold":true},{"text":" — Reward available! Open the Bestiary to claim.","color":"gray"}]

# Sound
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.6 1.4
