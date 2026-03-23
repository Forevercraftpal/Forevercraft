# Black Market Heist — Cooldown Check
# Run as player, with heist.target_barrel tagged
# Sets #heist_cd_active ec.var (0=ready, 1=on cooldown) and #heist_cd_days ec.var

# Default: no cooldown
scoreboard players set #heist_cd_active ec.var 0

# Tag self for UUID comparison
tag @s add heist.cd_checking

# Check all cooldown markers near this barrel
execute at @e[tag=heist.target_barrel,limit=1] as @e[type=marker,tag=heist.cooldown,distance=..2] run function evercraft:heist/cooldown/check_single

tag @s remove heist.cd_checking
