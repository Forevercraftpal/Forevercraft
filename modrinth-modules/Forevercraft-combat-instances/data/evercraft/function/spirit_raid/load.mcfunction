# Spirit Raid Unlock — Load
# Called from init.mcfunction on datapack load

# Persistent per-player unlock flag (1 = Spirit Raids permanently unlocked)
scoreboard objectives add ec.sr_unlocked dummy "Spirit Raids Unlocked"

# Trigger for prompt responses (1 = descend, 2 = decline)
scoreboard objectives add ec.sr_prompt trigger "Spirit Raid Prompt"
scoreboard players enable @a ec.sr_prompt

# Per-player countdown timer for prompt timeout (ticks remaining)
scoreboard objectives add ec.sr_timer dummy "Spirit Raid Prompt Timer"
