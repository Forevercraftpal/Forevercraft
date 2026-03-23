# Player hit a tameable mob — heal all tamed animals in range
# instant_health has no effect on full-health entities, so healing all is safe
# Amplifier 5 = 64 HP heal — more than enough to negate any player hit
execute at @s run effect give @e[type=#evercraft:tameable_companions,distance=..64,tag=ec.tame_protected] instant_health 1 5 true

# Revoke for re-trigger
advancement revoke @s only evercraft:tamed_protection/player_hit_tamed
