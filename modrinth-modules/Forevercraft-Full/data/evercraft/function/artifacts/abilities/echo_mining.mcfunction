# Echo Mining — Soul Pickaxe
# On hit: Sonic pulse — AoE damage in 6 blocks
advancement revoke @s only evercraft:artifacts/abilities/echo_mining_trigger
execute at @s as @e[type=!player,type=!item,distance=..6,limit=5,sort=nearest] run damage @s 4 minecraft:sonic_boom
execute at @s run particle sonic_boom ~ ~1 ~ 0 0 0 0 1
playsound minecraft:entity.warden.sonic_boom player @s ~ ~ ~ 0.4 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
