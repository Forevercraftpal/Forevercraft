# Contract failed — Artisan Rank too low. Refund contract.
tellraw @s [{"text":"[Laborer] ","color":"gold"},{"text":"Your Artisan Rank is too low to hire this laborer!","color":"red"}]
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1
