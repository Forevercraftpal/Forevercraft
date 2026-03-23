# Black Market Heist — Check Single Cooldown Marker
# Run as cooldown marker, checking player has tag heist.cd_checking

# Already found cooldown? Skip
execute if score #heist_cd_active ec.var matches 1 run return 0

# Compare UUID[0] — sufficient for single-player, very unlikely collision in multiplayer
execute store result score #cd_uuid ec.temp run data get entity @s data.player_uuid[0]
execute store result score #pl_uuid ec.temp run data get entity @a[tag=heist.cd_checking,limit=1] UUID[0]
execute unless score #cd_uuid ec.temp = #pl_uuid ec.temp run return 0

# UUID matched — check if expired
execute store result score #heist_refresh ec.temp run data get entity @s data.refresh_timer
execute store result score #heist_looted ec.temp run data get entity @s data.looted_at
execute store result score #heist_now ec.temp run time query gametime

# Calculate elapsed = now - looted_at
scoreboard players operation #heist_elapsed ec.temp = #heist_now ec.temp
scoreboard players operation #heist_elapsed ec.temp -= #heist_looted ec.temp

# If elapsed >= refresh, expired — kill marker and return (no cooldown)
execute if score #heist_elapsed ec.temp >= #heist_refresh ec.temp run kill @s
execute if score #heist_elapsed ec.temp >= #heist_refresh ec.temp run return 0

# Still on cooldown — calculate remaining days
scoreboard players operation #heist_remaining ec.temp = #heist_refresh ec.temp
scoreboard players operation #heist_remaining ec.temp -= #heist_elapsed ec.temp
# Convert ticks to in-game days (/ 72000)
scoreboard players operation #heist_remaining ec.temp /= #72000 ec.const
# Always show at least 1 day
scoreboard players add #heist_remaining ec.temp 1
scoreboard players operation #heist_cd_days ec.var = #heist_remaining ec.temp
scoreboard players set #heist_cd_active ec.var 1
