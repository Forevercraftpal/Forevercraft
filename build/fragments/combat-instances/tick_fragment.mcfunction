# === SPIRIT RAID PROMPT: Disconnect recovery ===
# If player reconnects while prompted, auto-decline (they lost the chat context)
execute as @a[tag=!ec.joined,tag=sr.prompted] run scoreboard players set @s ec.sr_timer 0
execute as @a[tag=!ec.joined,tag=sr.prompted] run tag @s remove sr.prompted

# Clear quest preview state on rejoin
execute as @a[tag=!ec.joined,scores={ec.qp_active=1}] run scoreboard players set @s ec.qp_active 0

# Detect player join (unified briefing + init)
execute as @a[tag=!ec.joined] at @s run function evercraft:dreams/on_join

# Track current day for "While You Were Away" — moved to luck_buffs/tick (1s schedule, OPT-6)
# Day changes once per 72000 ticks; 1s granularity is more than sufficient

# Dream rate buff system moved to 1s schedule (OPT-5, Session 9)
# Attribute modifiers persist between checks, 1s refresh is sufficient

# Mob crate detection moved to self-scheduling (10t interval)
# Items have pickup_delay so 0.5s detection is fine

# Growth Serum - detect lingering potion area_effect_clouds
# Match thick potion base (unused in vanilla, unique to Growth Serum)
# OPT: Single existence gate → apply + tag in one pass (was 2 separate entity scans)
execute if entity @e[type=area_effect_cloud,tag=!ec.growth_checked,limit=1] run function evercraft:potions/growth_serum/scan


# === INFINITE CASTLE: Intercept death before tomb ===
execute if score #ic_active ec.var matches 1 as @a[tag=ic.player,scores={ec.tomb_death=1..}] run function evercraft:castle/on_death
execute if score #ic_active ec.var matches 1 run scoreboard players set @a[tag=ic.player] ec.tomb_death 0


# === DUNGEON DIFFICULTY MENU ===
execute as @a[tag=DG.InMenu] at @s run function evercraft:dungeon/menu/tick


# === DUNGEON INSTANCE SYSTEM ===
# Only tick when a dungeon is active (zero overhead otherwise)
execute if score #dg_active ec.var matches 1 run function evercraft:dungeon/tick_active


# === INFINITE CASTLE SYSTEM ===
execute if score #ic_active ec.var matches 1 run function evercraft:castle/tick_active
execute as @a[tag=IC.InMenu] at @s run function evercraft:castle/menu/check_clicks


# === SPIRIT RAIDS SYSTEM ===
# Tick raid logic (votes, floor progression, boss fights)
# Gate: only runs when raid is active or vote is active (zero overhead otherwise)
execute if score #rd_active ec.var matches 1 run function evercraft:raids/tick
execute if score #rd_vote_active ec.var matches 1 unless score #rd_active ec.var matches 1 run function evercraft:raids/tick


# === SPIRIT RAIDS: Intercept death before tomb ===
execute if score #rd_active ec.var matches 1 as @a[tag=rd.player,scores={ec.tomb_death=1..}] run function evercraft:raids/on_death
execute if score #rd_active ec.var matches 1 run scoreboard players set @a[tag=rd.player] ec.tomb_death 0
