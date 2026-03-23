# Use Coin of Lucidity - Grants +1 bonus pull on next fountain visit
# Triggered by advancement: evercraft:gacha/use_wishing_coin

# Revoke so it can trigger again
advancement revoke @s only evercraft:gacha/use_wishing_coin

# Grant bonus pull flag
scoreboard players add @s ec.wish_bonus 1

# Visual and audio feedback
particle minecraft:enchant ~ ~1 ~ 0.3 0.5 0.3 1 20 force @s
particle minecraft:end_rod ~ ~1.5 ~ 0.2 0.3 0.2 0.02 15 force @s
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.2
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.6 0.8

# Notify the player
tellraw @s [{"text":"\u2726 ","color":"gold"},{"text":"Coin of Lucidity consumed! ","color":"yellow"},{"text":"+1 bonus pull","color":"gold","bold":true},{"text":" on your next Fountain visit.","color":"gray"},{"text":" \u2726","color":"gold"}]
execute store result score #bonus_count ec.temp run scoreboard players get @s ec.wish_bonus
execute if score #bonus_count ec.temp matches 2.. run tellraw @s [{"text":"  Bonus pulls banked: ","color":"gray"},{"score":{"name":"@s","objective":"ec.wish_bonus"},"color":"gold"}]
