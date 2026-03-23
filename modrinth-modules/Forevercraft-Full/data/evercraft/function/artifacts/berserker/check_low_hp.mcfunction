# Berserker — Low HP Haste Check
# Run as active berserker player
# Below 50% max health → Haste III (amplifier 2)

# Get current health (scaled x100 for precision)
execute store result score @s ec.bk_hp run data get entity @s Health 100

# Get max health (scaled x100)
execute store result score @s ec.bk_maxhp run attribute @s max_health get 100

# Halve max health to get 50% threshold
scoreboard players operation @s ec.bk_maxhp /= #2 ec.const

# If current health < 50% max → apply Haste III (2s, refreshed each tick)
execute if score @s ec.bk_hp < @s ec.bk_maxhp run effect give @s haste 2 2 true
