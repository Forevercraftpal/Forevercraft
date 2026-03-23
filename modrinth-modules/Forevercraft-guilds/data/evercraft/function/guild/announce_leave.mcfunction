# Guild — Announce player leaving
tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{selector:"@s"},{text:" has left the guild.",color:"gray"}]
