# === CRAFTING CLASS AFFINITY — LOAD ===
# Mirror of combat affinity system for 6 crafting classes
# Abbreviations: ss=Stonestrike, lf=Lumberfell, gs=Growseer, tw=Terrawarp, sc=Sirencall, lm=Lamentor

# Per-class totals
scoreboard objectives add ec.caff_ss dummy
scoreboard objectives add ec.caff_lf dummy
scoreboard objectives add ec.caff_gs dummy
scoreboard objectives add ec.caff_tw dummy
scoreboard objectives add ec.caff_sc dummy
scoreboard objectives add ec.caff_lm dummy

# Per-class daily caps
scoreboard objectives add ec.cdaff_ss dummy
scoreboard objectives add ec.cdaff_lf dummy
scoreboard objectives add ec.cdaff_gs dummy
scoreboard objectives add ec.cdaff_tw dummy
scoreboard objectives add ec.cdaff_sc dummy
scoreboard objectives add ec.cdaff_lm dummy

# Per-class boost %
scoreboard objectives add ec.caffb_ss dummy
scoreboard objectives add ec.caffb_lf dummy
scoreboard objectives add ec.caffb_gs dummy
scoreboard objectives add ec.caffb_tw dummy
scoreboard objectives add ec.caffb_sc dummy
scoreboard objectives add ec.caffb_lm dummy

# Per-class stage (0-7)
scoreboard objectives add ec.caffs_ss dummy
scoreboard objectives add ec.caffs_lf dummy
scoreboard objectives add ec.caffs_gs dummy
scoreboard objectives add ec.caffs_tw dummy
scoreboard objectives add ec.caffs_sc dummy
scoreboard objectives add ec.caffs_lm dummy

# Per-class mastery flags (0 = not mastered, 1 = mastered via quest)
scoreboard objectives add ec.caffm_ss dummy
scoreboard objectives add ec.caffm_lf dummy
scoreboard objectives add ec.caffm_gs dummy
scoreboard objectives add ec.caffm_tw dummy
scoreboard objectives add ec.caffm_sc dummy
scoreboard objectives add ec.caffm_lm dummy

# Shared
scoreboard objectives add ec.caff_class dummy
scoreboard objectives add ec.caff_boost dummy

# Constants for update_stage bitmask (not currently used, reserved)
scoreboard players set #2 ec.temp 2

# Permanent tick timer (every 40 ticks)
scoreboard objectives add ec.caff_ptimer dummy
execute unless score #caff_ptimer ec.var matches 0.. run scoreboard players set #caff_ptimer ec.var 0
