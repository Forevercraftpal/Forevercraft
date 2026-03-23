# Trophy Gallery — Show trophy info tellraw (Macro, runs as player)
# Args: name, color, requirement, earned_score, earned_label, bit

# Use pre-existing #trophy_bit_N constants to extract earned status
scoreboard players operation #trophy_earned ec.temp = @s ec.cf_trophies
$scoreboard players operation #trophy_earned ec.temp /= #trophy_bit_$(bit) ec.const
scoreboard players operation #trophy_earned ec.temp %= #2 ec.const

# Show info — earned
$execute if score #trophy_earned ec.temp matches 1 run tellraw @s [{"text":"\n"},{"text":"\u2726 ","color":"$(color)"},{"text":"$(name)","color":"$(color)","bold":true},{"text":" \u2726","color":"$(color)"},{"text":"\n  Status: ","color":"gray"},{"text":"\u2713 Earned!","color":"green","bold":true},{"text":"\n  Requirement: ","color":"gray"},{"text":"$(requirement)","color":"white"},{"text":"\n  Progress: ","color":"gray"},{"score":{"name":"@s","objective":"$(earned_score)"},"color":"aqua","bold":true},{"text":" $(earned_label)","color":"gray"},{"text":"\n  Reward: ","color":"gray"},{"text":"Trophy head (+25 Comfort)","color":"#FDD835"}]

# Show info — locked
$execute if score #trophy_earned ec.temp matches 0 run tellraw @s [{"text":"\n"},{"text":"\u2726 ","color":"dark_gray"},{"text":"??? ","color":"dark_gray","bold":true},{"text":"\u2726","color":"dark_gray"},{"text":"\n  Status: ","color":"gray"},{"text":"\u2717 Locked","color":"red"},{"text":"\n  Requirement: ","color":"gray"},{"text":"$(requirement)","color":"white"},{"text":"\n  Progress: ","color":"gray"},{"score":{"name":"@s","objective":"$(earned_score)"},"color":"aqua","bold":true},{"text":" $(earned_label)","color":"gray"},{"text":"\n  Reward: ","color":"gray"},{"text":"Trophy head (+25 Comfort)","color":"dark_gray"}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 1.5
