# === PILLAGE PVP: Intercept death for kill scoring ===
execute if score #gd_event_active ec.var matches 1 if score #gd_event_type ec.var matches 2 as @a[scores={ec.tomb_death=1..,ec.gd_event_active=1}] at @s run function evercraft:guild/diplomacy/event/pvp/on_kill


# === GUILD STONE INTERACTION ===
# OPT: Existence gate — skip entity scan + NBT read when no guildstones exist
execute if entity @e[type=interaction,tag=ec.guildstone_interact,limit=1] as @e[type=interaction,tag=ec.guildstone_interact] if data entity @s interaction at @s run function evercraft:guild/gui/on_stone_click


# === GUILD MENU TICK ===
execute as @a[tag=ec.guild_in_menu,tag=!Adv.InMenu] at @s run function evercraft:guild/gui/menu/tick


# === GUILD SCATTER NODE CLICK DETECTION ===
# OPT: Existence gate — skip when no scatter nodes exist
execute if score #ge_scatter_active ec.var matches 1 as @e[type=interaction,tag=ec.guild_node_click] if data entity @s interaction at @s run function evercraft:guild/events/scatter/on_click


# === GUILD STONE BREAK DETECTION ===
# OPT: Existence gate — skip when no guildstones exist
execute if entity @e[type=marker,tag=ec.guildstone,limit=1] as @e[type=marker,tag=ec.guildstone] at @s unless block ~ ~-0.5 ~ minecraft:lodestone run function evercraft:guild/stone/on_break


# === GUILD SNOW GOLEM DEFENSE ===
# Per-tick snowball tracking + scaled damage by guild level (existence-gated)
execute if entity @e[type=snow_golem,tag=ec.gs_golem,limit=1] run function evercraft:guild/golem/tick
