# Dreaming Realm — Load
# Initialize scoreboards, storage, bossbar, trigger

# Per-player scoreboards
scoreboard objectives add ec.dream_timer dummy "Dream Timer"
scoreboard objectives add ec.dream_active dummy "In Dreaming Realm"
scoreboard objectives add ec.dream_cd dummy "Dream Cooldown"
scoreboard objectives add ec.dream_ch1 dummy "Dream Challenge 1"
scoreboard objectives add ec.dream_ch2 dummy "Dream Challenge 2"
scoreboard objectives add ec.dream_ch3 dummy "Dream Challenge 3"
scoreboard objectives add ec.dream_frags dummy "Dream Fragments"
scoreboard objectives add ec.dream_seq dummy "Maze Sequence"
scoreboard objectives add ec.dream_wave dummy "Guardian Wave"
scoreboard objectives add ec.dream_lore dummy "Dream Lore Collected"
scoreboard objectives add ec.dj_count dummy "Dream Journal Entries"

# Emergency wake trigger
scoreboard objectives add ec.wake trigger "Wake from Dream"
scoreboard players enable @a ec.wake

# Global state (fake player scores)
execute unless score #dr_active ec.var matches 0.. run scoreboard players set #dr_active ec.var 0
scoreboard players set #dr_atmo ec.var 0

# Bossbar for dream timer (5 minutes = 6000 ticks)
bossbar add evercraft:dream_timer {text:"The Dream Fades...",color:"light_purple"}
bossbar set evercraft:dream_timer color purple
bossbar set evercraft:dream_timer style progress
bossbar set evercraft:dream_timer max 6000
bossbar set evercraft:dream_timer visible false

# Initialize storage defaults
data merge storage evercraft:dreaming {lucky_dream: false, challenges_complete: 0}
