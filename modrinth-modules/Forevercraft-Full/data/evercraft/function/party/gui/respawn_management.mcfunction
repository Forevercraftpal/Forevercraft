# Party GUI — Respawn Management Page
# Kills page content and re-spawns it (handles role changes after actions)
# Run as the player, at the player

# Kill party page entities via anchor
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.PartyPage,distance=..5]

# Cache new state for stale detection (per-player)
scoreboard players operation @s ec.pty_csz = @s ec.party_size
scoreboard players operation @s ec.pty_crl = @s ec.party_role

# Respawn facing the anchor
execute facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:party/gui/spawn_management

# Click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
