# Artifact Constellations — Init scoreboards and constants
# 10 thematic groups of artifacts. Complete a constellation for +0.25 Dream Rate.

# Per-constellation progress counters
scoreboard objectives add ec.cn_tide dummy "Constellation: Tidewalker"
scoreboard objectives add ec.cn_pyre dummy "Constellation: Pyreborn"
scoreboard objectives add ec.cn_verd dummy "Constellation: Verdant Crown"
scoreboard objectives add ec.cn_frost dummy "Constellation: Frozen Veil"
scoreboard objectives add ec.cn_earth dummy "Constellation: Earthshaker"
scoreboard objectives add ec.cn_star dummy "Constellation: Starweaver"
scoreboard objectives add ec.cn_shade dummy "Constellation: Shadow's Edge"
scoreboard objectives add ec.cn_dune dummy "Constellation: Dune Sovereign"
scoreboard objectives add ec.cn_storm dummy "Constellation: Stormcaller"
scoreboard objectives add ec.cn_soul dummy "Constellation: Soulbinder"

# Completion bitfield (bits 0-9, max 1023)
scoreboard objectives add ec.cn_done dummy "Constellations Complete"
