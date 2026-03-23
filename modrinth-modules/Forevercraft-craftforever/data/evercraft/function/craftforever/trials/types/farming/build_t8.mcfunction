# T8: Dry farmland — irrigate and grow 48 crops
# Farmland with NO water channels — player places water buckets

# Fill floor with dirt
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 dirt

# Farmland everywhere (will be dry — no water nearby)
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 farmland

# Seedling wheat across the field
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 wheat[age=0]
