# Called by advancement when player uses Pillager War Horn
advancement revoke @s only evercraft:trim/sentry_horn_use
execute if entity @s[tag=single_sentry] run function evercraft:trim/single/sentry/patrol
