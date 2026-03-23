# Hollow Sovereign — Sonic Boom (Phase 1 ranged attack while invisible)
# Targets a random participant, deals 6 damage in 4-block radius

# Pick a random target
execute as @a[tag=ec.rd_participant,sort=random,limit=1] at @s run function evercraft:raids/boss/hollow_sovereign/abilities/sonic_boom_hit
