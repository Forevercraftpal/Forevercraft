# Transition to next pull in a multi-pull sequence
# Runs as @s = player, at @s
# ec.reel_count > 0 guaranteed by caller

# Decrement remaining count, increment pull number
scoreboard players remove @s ec.reel_count 1
scoreboard players add @s ec.reel_pull 1

# Increment pity for this pull
scoreboard players add @s ec.wish_pity 1
scoreboard players add @s ec.wish_soft 1
scoreboard players add @s ec.wish_spark 1
scoreboard players add @s ec.wish_total 1

# Roll tier for this pull
function evercraft:gacha/pull/roll
scoreboard players operation @s ec.reel_tier = #gacha_tier ec.temp

# Reset animation timer and pre-roll flag for new pull
scoreboard players set @s ec.reel_tick 0
scoreboard players set @s ec.reel_sub 0

# Show pull counter
tellraw @s [{"text":"\u2726 ","color":"#E0B0FF"},{"text":"Pull ","color":"gold"},{"score":{"name":"@s","objective":"ec.reel_pull"},"color":"gold","bold":true},{"text":"/10","color":"gray"},{"text":" \u2726","color":"#E0B0FF"}]

# Brief transition sound
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.5 1.6
