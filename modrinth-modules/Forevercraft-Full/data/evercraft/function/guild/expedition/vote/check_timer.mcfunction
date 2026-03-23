# Guild Expedition — Check Vote Timer
# @s = guild marker with state 1 (VOTING)

execute store result score #gexp_now ec.temp run time query gametime
execute store result score #gexp_vote_end ec.temp run data get entity @s data.expedition.vote_ends_at

# If vote window has expired, resolve it
execute if score #gexp_now ec.temp >= #gexp_vote_end ec.temp run function evercraft:guild/expedition/vote/resolve
