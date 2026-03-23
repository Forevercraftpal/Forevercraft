# Shield Tank System — Load
# Shields held in mainhand grant Resistance and function as tank weapons
# Mainhand: Resistance I (II for Mythical), attack damage + knockback scaled by tier
# Mainhand hit: Taunt system — mark mobs, periodically pull them to you
# Mainhand shift+use: Shield Bash — raycast charge + AoE knockback
# Offhand shift+use: Unique per-shield abilities (knight/paladin playstyle)

# On-block passive cooldown (seconds, decremented in tick)
scoreboard objectives add ec.shield_cd dummy "Shield Block Cooldown"

# Taunt system
scoreboard objectives add ec.tk_id dummy "Tank Player ID"
scoreboard objectives add ec.tk_owner dummy "Taunt Owner ID (on mob)"
scoreboard objectives add ec.tk_expire dummy "Taunt Expiry Gametime (on mob)"
scoreboard objectives add ec.tk_pull_cd dummy "Taunt Pull Countdown (seconds)"
scoreboard objectives add ec.tk_tier dummy "Shield Tier (1-6)"

# Shield bash cooldown (seconds, decremented in tick)
scoreboard objectives add ec.tk_bash_cd dummy "Shield Bash Cooldown"

# Offhand ability cooldown (seconds, decremented in tick)
scoreboard objectives add ec.tk_off_cd dummy "Offhand Ability Cooldown"

# Anti-spam for shift+use detection (ticks, decremented per tick in main tick)
scoreboard objectives add ec.tk_use_cd dummy "Shift+Use Anti-Spam"

schedule function evercraft:artifacts/shields/tick 1s
