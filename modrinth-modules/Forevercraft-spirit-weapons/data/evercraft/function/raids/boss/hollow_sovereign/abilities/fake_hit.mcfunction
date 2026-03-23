# Hollow Sovereign — Fake Shadow Got Hit
# Track damage on fakes via a tag-based counter (score per-entity not practical for markers)
# After being hit 5 times, the fake "dies" (teleports away and goes invisible)

# Use tag counting — add a hit tag
tag @s add ec.rd_hs_fake_h1

# Count hits by checking accumulated tags
execute if entity @s[tag=ec.rd_hs_fake_h1,tag=ec.rd_hs_fake_h2,tag=ec.rd_hs_fake_h3,tag=ec.rd_hs_fake_h4,tag=ec.rd_hs_fake_h5] run function evercraft:raids/boss/hollow_sovereign/abilities/fake_death
execute if entity @s[tag=ec.rd_hs_fake_h1,tag=ec.rd_hs_fake_h2,tag=ec.rd_hs_fake_h3,tag=ec.rd_hs_fake_h4,tag=!ec.rd_hs_fake_h5] run tag @s add ec.rd_hs_fake_h5
execute if entity @s[tag=ec.rd_hs_fake_h1,tag=ec.rd_hs_fake_h2,tag=ec.rd_hs_fake_h3,tag=!ec.rd_hs_fake_h4] run tag @s add ec.rd_hs_fake_h4
execute if entity @s[tag=ec.rd_hs_fake_h1,tag=ec.rd_hs_fake_h2,tag=!ec.rd_hs_fake_h3] run tag @s add ec.rd_hs_fake_h3
execute if entity @s[tag=ec.rd_hs_fake_h1,tag=!ec.rd_hs_fake_h2] run tag @s add ec.rd_hs_fake_h2

# Impact particles
particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.05 8
playsound minecraft:entity.player.hurt_sweet_berry_bush hostile @a[tag=ec.rd_participant,distance=..10] ~ ~ ~ 0.6 1.5
