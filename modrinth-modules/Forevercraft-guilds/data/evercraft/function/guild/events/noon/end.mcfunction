# Guild Event — Daily Noon Gathering: End
# Players with 50%+ presence (1800+ ticks out of 3600) get rewards

scoreboard players set #ge_noon_active ec.var 0

# Reward qualifying players (ec.ge_noon_ticks >= 1800)
execute as @a[scores={ec.guild_id=1..,ec.ge_noon_ticks=1800..}] run function evercraft:guild/events/noon/reward

# Announce end
tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"The guild gathering has ended.",color:"gray"}]
