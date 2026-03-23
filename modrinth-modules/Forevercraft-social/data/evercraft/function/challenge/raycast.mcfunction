# Challenge System — Shared Raycast (finds targeted player)
# Runs as challenger, at challenger position
# Tags: challenge.mode_duel / challenge.mode_comp / challenge.mode_pet already set

# Skip if any pending invite already active for this challenger
execute if entity @s[tag=duel.challenger] run return 0
execute if entity @s[tag=h2h.challenger] run return 0

# Tag self to exclude from hit detection
tag @s add duel.raycaster

# Raycast from eyes — check 10 positions (0.5-5 blocks, 0.5 block steps)
execute anchored eyes positioned ^ ^ ^0.5 as @a[distance=..2.5,tag=!duel.raycaster,tag=!ec.duel_active_tag,tag=!dr.in_realm,tag=!dg.player,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add duel.ray_target
execute unless entity @a[tag=duel.ray_target] anchored eyes positioned ^ ^ ^1 as @a[distance=..2.5,tag=!duel.raycaster,tag=!ec.duel_active_tag,tag=!dr.in_realm,tag=!dg.player,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add duel.ray_target
execute unless entity @a[tag=duel.ray_target] anchored eyes positioned ^ ^ ^1.5 as @a[distance=..2.5,tag=!duel.raycaster,tag=!ec.duel_active_tag,tag=!dr.in_realm,tag=!dg.player,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add duel.ray_target
execute unless entity @a[tag=duel.ray_target] anchored eyes positioned ^ ^ ^2 as @a[distance=..2.5,tag=!duel.raycaster,tag=!ec.duel_active_tag,tag=!dr.in_realm,tag=!dg.player,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add duel.ray_target
execute unless entity @a[tag=duel.ray_target] anchored eyes positioned ^ ^ ^2.5 as @a[distance=..2.5,tag=!duel.raycaster,tag=!ec.duel_active_tag,tag=!dr.in_realm,tag=!dg.player,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add duel.ray_target
execute unless entity @a[tag=duel.ray_target] anchored eyes positioned ^ ^ ^3 as @a[distance=..2.5,tag=!duel.raycaster,tag=!ec.duel_active_tag,tag=!dr.in_realm,tag=!dg.player,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add duel.ray_target
execute unless entity @a[tag=duel.ray_target] anchored eyes positioned ^ ^ ^3.5 as @a[distance=..2.5,tag=!duel.raycaster,tag=!ec.duel_active_tag,tag=!dr.in_realm,tag=!dg.player,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add duel.ray_target
execute unless entity @a[tag=duel.ray_target] anchored eyes positioned ^ ^ ^4 as @a[distance=..2.5,tag=!duel.raycaster,tag=!ec.duel_active_tag,tag=!dr.in_realm,tag=!dg.player,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add duel.ray_target
execute unless entity @a[tag=duel.ray_target] anchored eyes positioned ^ ^ ^4.5 as @a[distance=..2.5,tag=!duel.raycaster,tag=!ec.duel_active_tag,tag=!dr.in_realm,tag=!dg.player,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add duel.ray_target
execute unless entity @a[tag=duel.ray_target] anchored eyes positioned ^ ^ ^5 as @a[distance=..2.5,tag=!duel.raycaster,tag=!ec.duel_active_tag,tag=!dr.in_realm,tag=!dg.player,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] run tag @s add duel.ray_target

# Route based on challenge mode (only if target found)
execute if entity @a[tag=duel.ray_target] if entity @s[tag=challenge.mode_duel] run function evercraft:duel/invite/initiate
execute if entity @a[tag=duel.ray_target] if entity @s[tag=challenge.mode_comp] run function evercraft:competition/h2h/initiate
execute if entity @a[tag=duel.ray_target] if entity @s[tag=challenge.mode_pet] run function evercraft:pet_duel/initiate_raycast

# Clean up
tag @s remove duel.raycaster
tag @a remove duel.ray_target
tag @s remove challenge.mode_duel
tag @s remove challenge.mode_comp
tag @s remove challenge.mode_pet
