# Battle Tempo Decay — resets all players' tempo stacks
# Called 3 seconds after last hit. If player hit again, the schedule was re-set.
# This is a global reset — safe because the schedule is refreshed on every hit.

scoreboard players set @a ec.battle_tempo 0
