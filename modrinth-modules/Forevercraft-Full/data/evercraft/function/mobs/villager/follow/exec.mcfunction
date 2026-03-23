effect give @s minecraft:slowness 2 255 true

rotate @s facing entity @p[distance=..8,tag=bestiary.villager.leader]

execute store result score @s bestiary.follow.motionX run data get entity @s Motion[0] 100
execute store result score @s bestiary.follow.motionZ run data get entity @s Motion[2] 100

execute store result score @p[distance=..8,tag=bestiary.villager.leader] bestiary.follow.px run data get entity @p[distance=..8,tag=bestiary.villager.leader] Pos[0] 5
execute store result score @p[distance=..8,tag=bestiary.villager.leader] bestiary.follow.py run data get entity @p[distance=..8,tag=bestiary.villager.leader] Pos[1] 50
execute store result score @p[distance=..8,tag=bestiary.villager.leader] bestiary.follow.pz run data get entity @p[distance=..8,tag=bestiary.villager.leader] Pos[2] 5

execute store result score @s bestiary.follow.ex run data get entity @s Pos[0] 5
execute store result score @s bestiary.follow.ey run data get entity @s Pos[1] 50
execute store result score @s bestiary.follow.ez run data get entity @s Pos[2] 5

scoreboard players operation @s bestiary.follow.dx = @p[distance=..8,tag=bestiary.villager.leader] bestiary.follow.px 
scoreboard players operation @s bestiary.follow.dx -= @s bestiary.follow.ex

scoreboard players operation @s bestiary.follow.dy = @p[distance=..8,tag=bestiary.villager.leader] bestiary.follow.py 
scoreboard players operation @s bestiary.follow.dy -= @s bestiary.follow.ey 

scoreboard players operation @s bestiary.follow.dz = @p[distance=..8,tag=bestiary.villager.leader] bestiary.follow.pz 
scoreboard players operation @s bestiary.follow.dz -= @s bestiary.follow.ez 

scoreboard players operation @s bestiary.follow.dx2 = @s bestiary.follow.dx
scoreboard players operation @s bestiary.follow.dx2 *= @s bestiary.follow.dx

scoreboard players operation @s bestiary.follow.dy2 = @s bestiary.follow.dy
scoreboard players operation @s bestiary.follow.dy2 *= @s bestiary.follow.dy

scoreboard players operation @s bestiary.follow.dz2 = @s bestiary.follow.dz
scoreboard players operation @s bestiary.follow.dz2 *= @s bestiary.follow.dz

scoreboard players operation @s bestiary.follow.len2 = @s bestiary.follow.dx2
scoreboard players operation @s bestiary.follow.len2 += @s bestiary.follow.dy2
scoreboard players operation @s bestiary.follow.len2 += @s bestiary.follow.dz2

execute as @s[scores={bestiary.follow.len2=..99}] run scoreboard players set @s bestiary.follow.dx 0
execute as @s[scores={bestiary.follow.len2=..99}] run scoreboard players set @s bestiary.follow.dy 0
execute as @s[scores={bestiary.follow.len2=..99}] run scoreboard players set @s bestiary.follow.dz 0

execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s bestiary.follow.dx 
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s bestiary.follow.dz 
execute as @s[scores={bestiary.follow.dy=1..,bestiary.follow.motionX=-2..2,bestiary.follow.motionZ=-2..2}] store result entity @s Motion[1] double 0.01 run scoreboard players get @s bestiary.follow.dy 