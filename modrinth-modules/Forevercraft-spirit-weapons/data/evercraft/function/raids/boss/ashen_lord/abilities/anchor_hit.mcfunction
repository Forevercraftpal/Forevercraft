# The Ashen Lord — Fire Anchor Hit
# Called as the anchor interaction entity
# Tracks hits via a score on the anchor's UUID, destroys after threshold

# Clear the interaction data
data remove entity @s interaction

# Track hits using the anchor counter tag system
# Use scoreboard on the entity — each anchor stores its own HP
# We use a simple tag-count approach: add a "hit" tag each time
tag @s add ec.rd_al_anchor_hit

# VFX feedback
particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.1 10
playsound minecraft:entity.iron_golem.hurt master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.2

# Count total hits on this anchor (check for 5 hit tags = destroyed)
# Since we can't count tags, use a simpler approach: decrement a shared counter
# Each anchor starts with 20 "HP" — store in scoreboard per-anchor
# On spawn, we'll init each anchor with 20 HP
# For now: just reduce the global anchor HP score and check

# Reduce anchor HP (stored in anchor-specific score)
# Since interaction entities can't easily hold per-entity scores,
# use the brute force approach: each hit reduces global #rd_al_anchors on threshold

# Track cumulative hits via tag cycling
execute if entity @s[tag=ec.rd_al_a_h5] run function evercraft:raids/boss/ashen_lord/abilities/anchor_destroy
execute if entity @s[tag=ec.rd_al_a_h4] unless entity @s[tag=ec.rd_al_a_h5] run tag @s add ec.rd_al_a_h5
execute if entity @s[tag=ec.rd_al_a_h3] unless entity @s[tag=ec.rd_al_a_h4] run tag @s add ec.rd_al_a_h4
execute if entity @s[tag=ec.rd_al_a_h2] unless entity @s[tag=ec.rd_al_a_h3] run tag @s add ec.rd_al_a_h3
execute if entity @s[tag=ec.rd_al_a_h1] unless entity @s[tag=ec.rd_al_a_h2] run tag @s add ec.rd_al_a_h2
execute unless entity @s[tag=ec.rd_al_a_h1] run tag @s add ec.rd_al_a_h1
