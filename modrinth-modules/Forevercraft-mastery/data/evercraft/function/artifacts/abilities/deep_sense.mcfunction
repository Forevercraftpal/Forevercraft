# Deep Sense — Soul Shovel
# On hit: Echolocation — Night Vision + reveal nearby enemies
advancement revoke @s only evercraft:artifacts/abilities/deep_sense_trigger
effect give @s night_vision 10 0 false
execute at @s run effect give @e[type=!player,type=!item,type=!armor_stand,type=!marker,type=!item_display,type=!interaction,distance=..16] glowing 8 0 false
execute at @s run particle sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0.02 10
playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 0.5 1

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
