# Taunt Pull — runs AS a player whose pull timer has expired
# Teleports all taunted mobs owned by this player to the player's position

# Store this player's tank ID for matching
scoreboard players operation #tk_match ec.var = @s ec.tk_id

# Tag self so mobs can reference us
tag @s add ec.tk_puller

# Teleport matching taunted mobs to the player, then face them toward player
execute as @e[tag=ec.taunted] if score @s ec.tk_owner = #tk_match ec.var at @a[tag=ec.tk_puller,limit=1] run tp @s ~ ~ ~
execute as @e[tag=ec.taunted] if score @s ec.tk_owner = #tk_match ec.var run tp @s ~ ~ ~ facing entity @a[tag=ec.tk_puller,limit=1] feet

# Particle + sound on pulled mobs (now near the player)
execute at @s as @e[tag=ec.taunted,distance=..5] if score @s ec.tk_owner = #tk_match ec.var at @s run particle soul_fire_flame ~ ~1 ~ 0.2 0.4 0.2 0.01 5
execute at @s run playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~ 0.6 1.5

# Clean up tag
tag @s remove ec.tk_puller

# Reset pull countdown based on current tier
function evercraft:artifacts/shields/taunt/set_tier
scoreboard players operation @s ec.tk_pull_cd = #tk_pull_interval ec.var
