# Black Market Heist — Active Tick (runs every game tick when heist is active)

# === DEATH PROTECTION (check before anything else) ===
execute as @a[tag=ec.heist_active_tag] run function evercraft:heist/active/check_health
execute unless score #heist_active ec.var matches 1 run return 0

# === HIT DETECTION (any damage = fail) ===
execute as @a[tag=ec.heist_active_tag,nbt={HurtTime:10s}] run function evercraft:heist/active/on_fail
execute unless score #heist_active ec.var matches 1 run return 0

# === BOUNDARY CHECK (elytra/riptide escape prevention) ===
# Center marker is at arena midpoint. If player is >35 blocks away, they escaped.
# Arena is ~60 long + 5 wide + 6 tall, so 35 block radius is generous.
execute as @a[tag=ec.heist_active_tag] at @s unless entity @e[type=marker,tag=heist.center,distance=..35] run function evercraft:heist/active/on_fail
execute unless score #heist_active ec.var matches 1 run return 0

# === COMPLETION CHECK (reached end zone) ===
execute as @a[tag=ec.heist_active_tag] at @s if entity @e[type=marker,tag=heist.endzone,distance=..3] run function evercraft:heist/active/on_success
execute unless score #heist_active ec.var matches 1 run return 0

# === TIMER ===
scoreboard players remove @a[tag=ec.heist_active_tag] ec.heist_timer 1

# Display timer on actionbar (convert ticks to seconds)
execute as @a[tag=ec.heist_active_tag] run function evercraft:heist/active/timer_display

# Check timeout
execute as @a[tag=ec.heist_active_tag,scores={ec.heist_timer=..0}] run function evercraft:heist/active/on_fail
