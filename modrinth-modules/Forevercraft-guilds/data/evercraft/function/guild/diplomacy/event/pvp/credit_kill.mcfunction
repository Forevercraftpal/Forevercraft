# Guild Diplomacy — Credit a PvP kill to the killer
# @s = the killer (nearest enemy participant)

scoreboard players add @s ec.gd_pvp_kills 1

tellraw @s [{text:"[Pillage] ",color:"dark_red"},{text:"Enemy slain! +1 Kill Score",color:"gold"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.5
