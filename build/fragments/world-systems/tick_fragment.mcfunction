# === REAPER: Disconnect recovery — kill orphaned hunt/bandit mobs ===
execute as @a[tag=!ec.joined,scores={rp.hunt_active=1}] run scoreboard players set @s rp.hunt_active 0
execute as @a[tag=!ec.joined,scores={rp.band_active=1}] run scoreboard players set @s rp.band_active 0


# === WORLD BOSS SYSTEM ===
# OPT: Bossbar HP update every 3 ticks via daylight_counter (was per-tick — saves ~67% NBT reads)
# 0.15s bossbar delay is imperceptible; health_bar system already uses 2t interval
execute if score #wb_active ec.var matches 1 if score #daylight_counter ec.var matches 0 store result bossbar evercraft:world_boss value run data get entity @e[type=!player,tag=wb.boss,limit=1] Health 1


# === FORAGING BUSH SYSTEM ===
# Per-tick: detect bush right-clicks
# OPT: Existence gate — skip entity scan when no forage bushes exist
execute if entity @e[type=interaction,tag=ec.forage_click,limit=1] as @e[type=interaction,tag=ec.forage_click] if data entity @s interaction at @s run function evercraft:forage/on_click
# Per-tick: progress bar for active gathering (only when players are gathering)
execute as @a[scores={ec.fg_picking=1}] at @s run function evercraft:forage/progress_step


# === ORE NODE SYSTEM ===
# Per-tick: detect node right-clicks
# OPT: Existence gate — skip entity scan when no ore nodes exist
execute if entity @e[type=interaction,tag=ec.prospect_click,limit=1] as @e[type=interaction,tag=ec.prospect_click] if data entity @s interaction at @s run function evercraft:prospect/on_click
# Per-tick: progress bar for active mining (only when players are mining)
execute as @a[scores={ec.pr_picking=1}] at @s run function evercraft:prospect/progress_step
