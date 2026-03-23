# World Boss — Anti-Range Check
# Called from tick.mcfunction, executed at the boss position
# Applies escalating debuffs to engaged players (wb.participant) who are too far away

# Warning zone: 25-35 blocks — Slowness II + Glowing
execute as @a[tag=wb.participant,distance=25..35] run function evercraft:bosses/anti_range/warn

# Danger zone: 35-50 blocks — Slowness III + Weakness II + Wither I
execute as @a[tag=wb.participant,distance=35..50] run function evercraft:bosses/anti_range/danger

# Extreme zone: 50+ blocks — Slowness IV + Weakness III + Wither II + Darkness
execute as @a[tag=wb.participant,distance=50..] run function evercraft:bosses/anti_range/extreme
