# === EMBERHEART RESPAWN HEAL (must run before death processing — catches last-tick deaths) ===
execute as @a[tag=ce.emberheart_revive] run function evercraft:companion_evolution/abilities/emberheart_respawn_heal


# === COMPANION EVOLUTION: Disconnect during ceremony recovery ===
execute as @a[tag=!ec.joined,tag=ce.evolving] run effect clear @s darkness
execute as @a[tag=!ec.joined,tag=ce.evolving] run scoreboard players set @s ec.ce_phase 0
execute as @a[tag=!ec.joined,tag=ce.evolving] run tag @s remove ce.evolving


# === COMPANION CATALOGUE: Disconnect recovery ===
scoreboard players set @a[tag=!ec.joined,scores={ec.cc_use=1..}] ec.cc_use 0


# === PET COMBAT SYSTEM ===
# Per-tick whistle cooldown (only runs math when players have active cooldowns)
execute as @a[scores={companion.wcd=1..}] run scoreboard players remove @s companion.wcd 1


# === EVOLVED COMPANION COMBAT ABILITIES ===
# On-hit: player dealt damage (vex_attack scoreboard tracks damage_dealt)
execute as @a[tag=ce.evolved_active,scores={vex_attack=1..}] run function evercraft:companion_evolution/on_hit
# On-hurt: player was hit (HurtTime:10s = just took damage this tick)
execute as @a[tag=ce.evolved_active,nbt={HurtTime:10s}] run function evercraft:companion_evolution/on_hurt
# On-kill: piggybacked off pet combat system's kill detection (per-tick overhead only when evolved active)
