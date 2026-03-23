# Bulwark Shield — Wall Channel Per-Tick
# Run as player at player during Unbreakable Wall channel
# Track damage absorbed, taunt refresh, particles

# === TRACK DAMAGE ABSORBED ===
# Compare current health to stored health, accumulate difference
execute store result score #bw_hp ec.temp run data get entity @s Health 1
# If current HP < stored HP, difference was absorbed
execute if score #bw_hp ec.temp < @s ec.sp_state run scoreboard players operation @s ec.sp_wall_absorb += @s ec.sp_state
execute if score #bw_hp ec.temp < @s ec.sp_state run scoreboard players operation @s ec.sp_wall_absorb -= #bw_hp ec.temp
# Update stored HP
execute store result score @s ec.sp_state run data get entity @s Health 1

# === TAUNT REFRESH (every 20 ticks) ===
# Make taunted mobs target the wall user
execute store result score #bw_taunt ec.temp run time query gametime
scoreboard players operation #bw_taunt ec.temp %= #20 ec.const
execute if score #bw_taunt ec.temp matches 0 as @e[tag=ec.sp_taunted,distance=..16] run data merge entity @s {Brain:{}}

# === VFX — Stoic shield aura ===
particle dust{color:[0.4,0.4,0.7],scale:1.5} ~ ~1 ~ 1.5 1.0 1.5 0.02 8
particle ash ~ ~0.5 ~ 2.0 0.5 2.0 0.03 5
particle block_crumble{block_state:"minecraft:stone"} ~ ~0.1 ~ 1.0 0.0 1.0 0.05 3

# Heartbeat SFX every 40 ticks
execute store result score #bw_sfx ec.temp run time query gametime
scoreboard players operation #bw_sfx ec.temp %= #40 ec.const
execute if score #bw_sfx ec.temp matches 0 run playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.3 0.3

# Show absorption counter on actionbar every 20 ticks
execute if score #bw_taunt ec.temp matches 0 run title @s actionbar [{"text":"Wall Absorbing: ","color":"blue"},{"score":{"name":"@s","objective":"ec.sp_wall_absorb"},"color":"aqua","bold":true},{"text":" damage","color":"blue"}]
