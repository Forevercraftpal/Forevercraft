# Arbiter — On Hit Detection (Phase 1)
# Boss was hit — record for mimic counter-attack

# Flash particles to indicate the Arbiter is studying the attack
execute at @s run particle minecraft:enchant ~ ~1.5 ~ 0.3 0.3 0.3 0.5 5
execute at @s run playsound minecraft:block.amethyst_block.hit hostile @a[tag=ec.rd_participant,distance=..20] ~ ~ ~ 0.6 1.5
