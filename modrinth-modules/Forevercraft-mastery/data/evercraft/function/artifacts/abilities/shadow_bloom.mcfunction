# Shadow Bloom — Soul Hoe
# On hit: Emanate darkness — blinds enemies, empowers self
advancement revoke @s only evercraft:artifacts/abilities/shadow_bloom_trigger
execute at @s run effect give @e[type=!player,type=!item,distance=..8,limit=3,sort=nearest] darkness 5 0 false
effect give @s strength 8 0 false
execute at @s run particle sculk_charge_pop ~ ~1 ~ 0.5 0.5 0.5 0.02 15
playsound minecraft:entity.warden.agitated player @s ~ ~ ~ 0.4 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
