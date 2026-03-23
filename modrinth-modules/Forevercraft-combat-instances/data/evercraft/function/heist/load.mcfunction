# Black Market Heist — Load/Init
# Registers scoreboards, cleans stale state, starts scheduled ticks

# === SCOREBOARD OBJECTIVES ===
scoreboard objectives add ec.heist trigger "Heist Action"
scoreboard objectives add ec.heist_active dummy "In Active Heist"
scoreboard objectives add ec.heist_timer dummy "Heist Timer"
scoreboard objectives add ec.heist_wins dummy "Heist Wins"
scoreboard players enable @a ec.heist

# === CONSTANTS ===
scoreboard players set #20 ec.const 20

# === GLOBAL STATE INIT ===
execute unless score #heist_active ec.var matches 0.. run scoreboard players set #heist_active ec.var 0

# === CLEAN STALE STATE ON RELOAD ===
scoreboard players set @a ec.heist_active 0
scoreboard players set @a ec.heist_timer 0
tag @a remove ec.heist_active_tag
scoreboard players set #heist_active ec.var 0

# If arena exists from a crash, destroy it
execute if entity @e[type=marker,tag=heist.center,limit=1] run function evercraft:heist/cleanup

# === START SCHEDULED TICKS ===
schedule function evercraft:heist/tick 1s
