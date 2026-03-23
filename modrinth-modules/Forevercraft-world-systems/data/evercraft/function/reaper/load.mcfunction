# Reaper System — Load
# Morality system: Infamy (bad deeds) vs Renown (good deeds), 0-5000 scale

# Per-player scores
scoreboard objectives add rp.infamy dummy "Reaper Infamy"
scoreboard objectives add rp.renown dummy "Reaper Renown"
scoreboard objectives add rp.tier dummy "Reaper Alignment Tier"

# Delta snapshots for vanilla stat tracking
scoreboard objectives add rp.pk_snap dummy "Reaper PK Snapshot"
scoreboard objectives add rp.vk_snap dummy "Reaper Villager Kill Snap"
scoreboard objectives add rp.gk_snap dummy "Reaper Golem Kill Snap"
scoreboard objectives add rp.trade_snap dummy "Reaper Trade Snapshot"
scoreboard objectives add rp.trade_today dummy "Reaper Trades Today"

# Vanilla stat criteria scoreboards (for delta detection)
scoreboard objectives add rp.stat_pk minecraft.custom:minecraft.player_kills "Reaper Stat PK"
scoreboard objectives add rp.stat_vk minecraft.killed:minecraft.villager "Reaper Stat VK"
scoreboard objectives add rp.stat_gk minecraft.killed:minecraft.iron_golem "Reaper Stat GK"
scoreboard objectives add rp.stat_trade minecraft.custom:minecraft.traded_with_villager "Reaper Stat Trade"

# Hunting party tracking
scoreboard objectives add rp.hunt_last dummy "Hunt Party Last Spawn (gametime)"
scoreboard objectives add rp.hunt_active dummy "Hunt Party Active Flag"
scoreboard objectives add rp.hunt_owner dummy "Hunt Party Owner ID"

# Bandit tracking
scoreboard objectives add rp.band_last dummy "Bandit Last Spawn (gametime)"
scoreboard objectives add rp.band_active dummy "Bandit Active Flag"
scoreboard objectives add rp.band_owner dummy "Bandit Owner ID"

# Scratch scoreboard
scoreboard objectives add rp.temp dummy "Reaper Temp"

# Global state (preserve across reloads)
execute unless score #rp_next_id ec.var matches 0.. run scoreboard players set #rp_next_id ec.var 0

# Teams for hunt/bandit glowing
team add rp.hunters "Bounty Hunters"
team modify rp.hunters color dark_aqua
team add rp.bandits "Bandits"
team modify rp.bandits color dark_red

# Constants (on rp.temp fake players for local use)
scoreboard players set #24000 rp.temp 24000
scoreboard players set #48000 rp.temp 48000
scoreboard players set #72000 rp.temp 72000
scoreboard players set #96000 rp.temp 96000
scoreboard players set #120000 rp.temp 120000
scoreboard players set #12 rp.temp 12
scoreboard players set #100 rp.temp 100
scoreboard players set #150 rp.temp 150
scoreboard players set #50 rp.temp 50
scoreboard players set #30 rp.temp 30
scoreboard players set #10 rp.temp 10
scoreboard players set #5000 rp.temp 5000
scoreboard players set #0 rp.temp 0
scoreboard players set #80 rp.temp 80
scoreboard players set #90 rp.temp 90

# Schedule 60-second tick (self-scheduling, >5s = no watchdog needed)
schedule function evercraft:reaper/tick 60s
