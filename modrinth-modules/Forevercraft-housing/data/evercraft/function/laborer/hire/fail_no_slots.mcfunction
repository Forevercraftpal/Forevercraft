# Contract failed — no available laborer slots. Refund contract.
tellraw @s [{"text":"[Laborer] ","color":"gold"},{"text":"You have no available laborer slots! (","color":"red"},{"score":{"name":"@s","objective":"ec.lb_count"},"color":"yellow"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"ec.lb_max"},"color":"yellow"},{"text":")","color":"red"}]
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1
