# World Boss — Mark player as damage participant
# Called from advancement bosses/damage/dealt (player_hurt_entity)
# Tags the player so they receive rewards when boss dies

tag @s add wb.participant
advancement revoke @s only evercraft:bosses/damage/dealt
