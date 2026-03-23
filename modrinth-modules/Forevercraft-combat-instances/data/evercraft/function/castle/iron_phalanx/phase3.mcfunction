# The Iron Phalanx — Phase 3: The Last Centurion (33%-0% HP)
# Boss solo: Speed II, dual-wields, alternating attacks, charge dash

# === SPEED BUFF ===
execute as @e[tag=ic.iron_phalanx,limit=1] run effect give @s speed 2 1 true

# === VULNERABILITY — boss takes 20% MORE damage (Weakness-style, lower armor) ===
# Remove resistance, keep armor lower than base
execute as @e[tag=ic.iron_phalanx,limit=1] run effect clear @s resistance

# === ALTERNATING ATTACKS (every 40 ticks) ===
execute if score #ic_phalanx_cd ec.var matches ..0 as @e[tag=ic.iron_phalanx,limit=1] at @s run function evercraft:castle/iron_phalanx/last_centurion_attack
execute if score #ic_phalanx_cd ec.var matches ..0 run scoreboard players set #ic_phalanx_cd ec.var 40

# === PHALANX GHOST CHARGE (every 160 ticks — 8 seconds) ===
execute if score #ic_phalanx_charge_cd ec.var matches ..0 as @e[tag=ic.iron_phalanx,limit=1] at @s run function evercraft:castle/iron_phalanx/charge
execute if score #ic_phalanx_charge_cd ec.var matches ..0 run scoreboard players set #ic_phalanx_charge_cd ec.var 160

# === SPECTRAL SPEAR CLEANUP (remove expired spears) ===
execute as @e[tag=ic.phalanx_spear] run scoreboard players remove @s ec.temp 1
kill @e[tag=ic.phalanx_spear,scores={ec.temp=..0}]

# === SPECTRAL SPEAR DAMAGE (4 damage to nearby players) ===
execute as @e[tag=ic.phalanx_spear] at @s run damage @a[tag=ic.player,distance=..1.5,limit=1,sort=nearest] 4 minecraft:mob_attack
