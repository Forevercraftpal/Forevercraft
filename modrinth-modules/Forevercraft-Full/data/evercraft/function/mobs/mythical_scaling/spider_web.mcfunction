# Place a cobweb at the nearest player's feet
# Run as: mythical_spider, at spider
# Only spawn webs for players with DR 25+ (luck >= 25.0 = 250 at scale 10)
# Lock to single nearest player to avoid targeting different players across lines
execute as @p[distance=..8] run function evercraft:mobs/mythical_scaling/spider_web_place
