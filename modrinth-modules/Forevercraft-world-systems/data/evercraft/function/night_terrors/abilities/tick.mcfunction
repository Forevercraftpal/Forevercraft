# Night Terrors — Ability tick for active encounter
# Run as player with active terror, at player

# Tag self for entity-facing references (multiplayer safe)
tag @s add ec.nt_owner

# Check if THIS player's terror still exists (owner-filtered, not global)
scoreboard players operation #nt_check ec.var = @s ec.nt_owner_id
scoreboard players set #nt_alive ec.var 0
execute as @e[tag=ec.night_terror] if score @s ec.nt_owner_id = #nt_check ec.var run scoreboard players set #nt_alive ec.var 1
execute if score #nt_alive ec.var matches 0 run function evercraft:night_terrors/on_death
execute if score #nt_alive ec.var matches 0 run tag @s remove ec.nt_owner
execute if score #nt_alive ec.var matches 0 run return 0

# Distance calculation via position subtraction
execute store result score #nt_px ec.var run data get entity @s Pos[0]
execute store result score #nt_pz ec.var run data get entity @s Pos[2]
execute as @e[tag=ec.night_terror,limit=1,sort=nearest] store result score #nt_tx ec.var run data get entity @s Pos[0]
execute as @e[tag=ec.night_terror,limit=1,sort=nearest] store result score #nt_tz ec.var run data get entity @s Pos[2]
scoreboard players operation #nt_dx ec.var = #nt_px ec.var
scoreboard players operation #nt_dx ec.var -= #nt_tx ec.var
scoreboard players operation #nt_dz ec.var = #nt_pz ec.var
scoreboard players operation #nt_dz ec.var -= #nt_tz ec.var
# Absolute values
execute if score #nt_dx ec.var matches ..-1 run scoreboard players operation #nt_dx ec.var *= #-1 ec.const
execute if score #nt_dz ec.var matches ..-1 run scoreboard players operation #nt_dz ec.var *= #-1 ec.const
# Rough distance = max(dx, dz)
scoreboard players operation #nt_dist ec.var = #nt_dx ec.var
execute if score #nt_dz ec.var > #nt_dx ec.var run scoreboard players operation #nt_dist ec.var = #nt_dz ec.var
# Chase teleport if >50 blocks — teleport terror near the player
execute if score #nt_dist ec.var matches 50.. as @e[tag=ec.night_terror,limit=1,sort=nearest] run tp @s @a[tag=ec.nt_owner,limit=1]
execute if score #nt_dist ec.var matches 50.. as @e[tag=ec.night_terror,limit=1,sort=nearest] at @s run spreadplayers ~ ~ 10 20 false @s
execute if score #nt_dist ec.var matches 50.. as @e[tag=ec.night_terror,limit=1,sort=nearest] at @s run particle reverse_portal ~ ~1 ~ 0.5 1 0.5 0.05 30

# Ability cooldown
scoreboard players remove @s ec.nt_ability_cd 1
execute unless score @s ec.nt_ability_cd matches ..0 run tag @s remove ec.nt_owner
execute unless score @s ec.nt_ability_cd matches ..0 run return 0
scoreboard players set @s ec.nt_ability_cd 10

# Fire type-specific ability
# OPT: Removed doubled entity selectors — `as @e` already implies existence (12→6 scans)

# Hollow (wither_skeleton) — teleport behind player + invis
execute as @e[type=wither_skeleton,tag=ec.nt_hollow,distance=..100,limit=1,sort=nearest] at @s run tp @s ^ ^ ^-3 facing entity @a[tag=ec.nt_owner,limit=1]
execute as @e[type=wither_skeleton,tag=ec.nt_hollow,distance=..100,limit=1,sort=nearest] run effect give @s minecraft:invisibility 2 0 true

# Dreamreaver (phantom) — darkness + flap sound (effects target player, not mob)
execute if entity @e[type=phantom,tag=ec.nt_dreamreaver,distance=..100] run effect give @s minecraft:darkness 5 0 true
execute if entity @e[type=phantom,tag=ec.nt_dreamreaver,distance=..100] run playsound minecraft:entity.phantom.flap hostile @s ~ ~ ~ 0.8 0.5

# Wailing (stray) — slowness on player + summon minions at stray position
execute if entity @e[type=stray,tag=ec.nt_wailing,distance=..100] run effect give @s minecraft:slowness 5 0 false
execute as @e[type=stray,tag=ec.nt_wailing,distance=..100,limit=1,sort=nearest] at @s run function evercraft:night_terrors/abilities/wailing_summon

# Rotfather (zombie) — poison on player + particles at zombie position
execute if entity @e[type=zombie,tag=ec.nt_rotfather,distance=..100] run effect give @s minecraft:poison 3 0 false
execute as @e[type=zombie,tag=ec.nt_rotfather,distance=..100,limit=1,sort=nearest] at @s run particle minecraft:spore_blossom_air ~ ~1 ~ 3 1 3 0.1 30

# Nightfang (spider) — speed boost on spider + cobweb at player
execute as @e[type=spider,tag=ec.nt_nightfang,distance=..100,limit=1,sort=nearest] run effect give @s minecraft:speed 3 4 true
execute if entity @e[type=spider,tag=ec.nt_nightfang,distance=..100] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:cobweb

# Revenant (vindicator) — resistance on vindicator + ambient sound at player
execute as @e[type=vindicator,tag=ec.nt_revenant,distance=..100,limit=1,sort=nearest] run effect give @s minecraft:resistance 10 1 true
execute if entity @e[type=vindicator,tag=ec.nt_revenant,distance=..100] run playsound minecraft:entity.vindicator.ambient hostile @s ~ ~ ~ 0.7 0.8

# Cleanup owner tag
tag @s remove ec.nt_owner
