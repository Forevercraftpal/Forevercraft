# Difficulty System — Scoreboard Registration
# ec.difficulty: 0 = unchosen, 1 = Newcomer, 2 = Adventurer
# ec.diff_day: day number when difficulty was last chosen (for 14-day lock timer)
# ec.diff_trigger: trigger for tellraw click handling

scoreboard objectives add ec.difficulty dummy "Player Difficulty"
scoreboard objectives add ec.diff_day dummy "Difficulty Chosen Day"
scoreboard objectives add ec.diff_trigger trigger "Difficulty Selection"

# Constants
scoreboard players set #14 ec.const 14
scoreboard players set #11 ec.const 11
