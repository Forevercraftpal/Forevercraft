# Night Terrors System — Load
# New Moon mini-bosses for high Dream Rate players (30+)

# Per-player scoreboards
scoreboard objectives add ec.nt_cd dummy "Night Terror Cooldown"
scoreboard objectives add ec.nt_active dummy "Night Terror Active"
scoreboard objectives add ec.nt_warn_cd dummy "Night Terror Warning Timer"
scoreboard objectives add ec.nt_ability_cd dummy "Night Terror Ability CD"
scoreboard objectives add ec.nt_kills dummy "Night Terror Kills"
scoreboard objectives add ec.nt_owner_id dummy "Night Terror Owner ID"

# Terror team (dark red glowing)
team add ec.night_terror "Night Terror"
team modify ec.night_terror color dark_red

# Schedule 60-second check (self-scheduling, >5s = no watchdog needed)
schedule function evercraft:night_terrors/check 60s
