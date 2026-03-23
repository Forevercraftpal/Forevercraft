# Competition System — Scoreboard Registration
# Called from init.mcfunction on datapack load

# Per-player state
scoreboard objectives add ec.comp_score dummy "Competition Score"
scoreboard objectives add ec.comp_baseline dummy "Competition Baseline"
scoreboard objectives add ec.comp_best dummy "Competition Personal Best"
scoreboard objectives add ec.comp_place dummy "Competition Placement"
scoreboard objectives add ec.comp_wins dummy "Competition Wins"
scoreboard objectives add ec.comp_top3 dummy "Competition Top 3"
scoreboard objectives add ec.comp_today dummy "Competition Participated"

# Global state (preserved across reload unless explicitly reset)
execute unless score #comp_active ec.var matches 0.. run scoreboard players set #comp_active ec.var 0
execute unless score #comp_day_type ec.var matches 0.. run scoreboard players set #comp_day_type ec.var 0
execute unless score #comp_timer ec.var matches 0.. run scoreboard players set #comp_timer ec.var 0

# Bossbar
bossbar add minecraft:competition {text:"Competition",color:"gold"}
bossbar set minecraft:competition visible false
bossbar set minecraft:competition players @a
bossbar set minecraft:competition color yellow
bossbar set minecraft:competition max 6000

# === Head-to-Head (H2H) Competition ===
scoreboard objectives add ec.h2h_score dummy "H2H Score"
scoreboard objectives add ec.h2h_baseline dummy "H2H Baseline"
scoreboard objectives add ec.h2h trigger "H2H Trigger"
scoreboard objectives add ec.h2h_inv dummy "H2H Invite"
scoreboard objectives add ec.h2h_inv_cd dummy "H2H Invite Cooldown"

# H2H global state
execute unless score #h2h_active ec.var matches 0.. run scoreboard players set #h2h_active ec.var 0
execute unless score #h2h_timer ec.var matches 0.. run scoreboard players set #h2h_timer ec.var 0

# Clean up stale state on reload (don't reset lifetime stats)
scoreboard players set @a ec.comp_score 0
scoreboard players set @a ec.comp_place 0
scoreboard players set @a ec.comp_today 0
scoreboard players set @a ec.h2h_score 0
scoreboard players set @a ec.h2h_inv 0
scoreboard players set @a ec.h2h_inv_cd 0

# Clean up stale h2h tags
tag @a remove h2h.participant
tag @a remove h2h.challenger
tag @a remove h2h.pending_target
tag @a remove h2h.winner
tag @a remove h2h.loser
scoreboard players set #h2h_active ec.var 0
bossbar remove evercraft:h2h_competition
