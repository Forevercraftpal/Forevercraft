# Fortified Defense — Tower Shield
# Grants Resistance I on hit for 5 seconds
advancement revoke @s only evercraft:artifacts/abilities/fortified_defense_trigger
effect give @s resistance 5 0 false
execute at @s run particle enchant ~ ~1 ~ 0.3 0.5 0.3 0.5 8
playsound minecraft:item.shield.block player @s ~ ~ ~ 0.8 1

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
