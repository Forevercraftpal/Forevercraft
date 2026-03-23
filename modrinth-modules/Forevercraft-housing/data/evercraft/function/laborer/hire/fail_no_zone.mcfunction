# Contract failed — player not in home zone. Refund contract.
tellraw @s [{"text":"[Laborer] ","color":"gold"},{"text":"You must be inside your home zone to hire a laborer!","color":"red"}]
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1
