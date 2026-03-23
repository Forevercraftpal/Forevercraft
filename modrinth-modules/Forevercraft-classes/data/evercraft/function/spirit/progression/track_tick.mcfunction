# Spirit Progression — Per-Tick Tracking
# Called from spirit/tick.mcfunction for active spirit weapon holders
# Handles: survival timer, kill streak reset, damage taken tracking

# === SURVIVAL TIMER ===
# Increment survive counter every 1200 ticks (1 minute)
scoreboard players add #sp_survive_timer ec.var 1
execute if score #sp_survive_timer ec.var matches 1200.. run scoreboard players set #sp_survive_timer ec.var 0
execute if score #sp_survive_timer ec.var matches 0 as @a[tag=ec.sp_active] run scoreboard players add @s ec.sp_survive 1

# === DAMAGE TAKEN TRACKING (all weapons) ===
# Increment when player has any nonzero HurtTime (just took damage this tick)
# HurtTime is a short that starts at 10 and decrements — check 1s.. to catch any frame
execute as @a[tag=ec.sp_active,nbt={HurtTime:10s}] run scoreboard players add @s ec.sp_damage_taken 1

# === KILL STREAK ===
# Reset current streak when player takes damage (HurtTime = 10s = fresh damage frame)
execute as @a[tag=ec.sp_active,nbt={HurtTime:10s}] run scoreboard players set @s ec.sp_cur_streak 0

# === DEATHLESS HOURS (Bulwark) ===
# Every 72000 ticks = 1 hour (real time via gametime)
scoreboard players add #sp_deathless_timer ec.var 1
execute if score #sp_deathless_timer ec.var matches 72000.. run scoreboard players set #sp_deathless_timer ec.var 0
execute if score #sp_deathless_timer ec.var matches 0 as @a[tag=ec.sp_active] run scoreboard players add @s ec.sp_deathless_hours 1
