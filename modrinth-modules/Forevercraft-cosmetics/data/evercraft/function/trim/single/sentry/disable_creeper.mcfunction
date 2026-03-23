# Disable creeper explosion and tag it so we don't run data merge again
data merge entity @s {ExplosionRadius:0b}
tag @s add sentry_no_explode
