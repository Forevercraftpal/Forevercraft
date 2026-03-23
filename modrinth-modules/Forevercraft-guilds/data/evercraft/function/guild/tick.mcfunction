# ============================================================
# Guild System — 5s Self-Scheduling Tick
# Buffs, triggers, invite timeouts, auto-promote
# ============================================================

# Self-schedule
schedule function evercraft:guild/tick 5s

# === BUFF APPLICATION (all guilded players) ===
execute as @a[scores={ec.guild_id=1..}] run function evercraft:guild/buffs/apply

# === INVITE TIMEOUT ===
# Decrement invite cooldown (5s tick = remove 100 ticks per cycle)
scoreboard players remove @a[scores={ec.guild_inv_cd=1..}] ec.guild_inv_cd 100
# Auto-decline expired invites
execute as @a[scores={ec.guild_inv_cd=..-1,ec.guild_inv_from=1..}] run function evercraft:guild/invite/decline

# === TRIGGER PROCESSING ===
# Guild invite accept/decline (1=accept, 2=decline)
execute as @a[scores={ec.guild_inv=1}] run function evercraft:guild/invite/accept
execute as @a[scores={ec.guild_inv=2}] run function evercraft:guild/invite/decline
scoreboard players enable @a[scores={ec.guild_inv=1..}] ec.guild_inv
scoreboard players set @a[scores={ec.guild_inv=1..}] ec.guild_inv 0

# Guild donate trigger (at guild stone)
execute as @a[scores={ec.guild_donate=1..}] at @s run function evercraft:guild/contribution/donate
scoreboard players enable @a[scores={ec.guild_donate=1..}] ec.guild_donate
scoreboard players set @a[scores={ec.guild_donate=1..}] ec.guild_donate 0

# Guild menu trigger (various actions)
# 2=members, 4=manage, 5=invite mode, 6=vote kick, 7=leave, 8=disband
execute as @a[scores={ec.guild_menu=1..}] run function evercraft:guild/gui/trigger_handler
scoreboard players enable @a[scores={ec.guild_menu=1..}] ec.guild_menu
scoreboard players set @a[scores={ec.guild_menu=1..}] ec.guild_menu 0

# Kick vote triggers
execute as @a[scores={ec.guild_kick=1..}] run function evercraft:guild/kick/vote
scoreboard players enable @a[scores={ec.guild_kick=1..}] ec.guild_kick
scoreboard players set @a[scores={ec.guild_kick=1..}] ec.guild_kick 0

# Expedition vote triggers
execute as @a[scores={ec.gexp_vote=1..3}] run function evercraft:guild/expedition/vote/cast
scoreboard players enable @a[scores={ec.gexp_vote=1..}] ec.gexp_vote
scoreboard players set @a[scores={ec.gexp_vote=1..}] ec.gexp_vote 0

# Kick vote timeout
scoreboard players remove @a[scores={ec.guild_kick_cd=1..}] ec.guild_kick_cd 100
execute as @a[scores={ec.guild_kick_cd=..-1}] run function evercraft:guild/kick/expire

# === GUILD COMPANION PETS ===
execute if entity @e[type=chicken,tag=GuildCompanion,limit=1] run function evercraft:guild/pets/tick

# === GUILD NPC MEMBERS ===
execute if entity @e[type=minecraft:villager,tag=GuildNPC,limit=1] run function evercraft:guild/npc/tick

# === GUILD ZONE CHECK ===
execute as @a[scores={ec.guild_id=1..}] at @s run function evercraft:guild/zone/check
