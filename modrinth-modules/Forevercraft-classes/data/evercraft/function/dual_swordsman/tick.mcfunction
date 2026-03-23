# Dual Swordsman — Per-Tick Processing
# Manages Whirlwind passive timer, ability cooldown, and deactivation

# === DEACTIVATION CHECK ===
# Verify player still holds a dual_swordsman spirit weapon in mainhand + sword in offhand
execute as @a[tag=ec.ds_active] unless items entity @s weapon.mainhand *[custom_data~{spirit_class:"dual_swordsman"}] run function evercraft:dual_swordsman/remove
execute as @a[tag=ec.ds_active] unless items entity @s weapon.offhand #minecraft:swords run function evercraft:dual_swordsman/remove

# === WHIRLWIND PASSIVE ===
# Decrement timer for all active DS players
scoreboard players remove @a[tag=ec.ds_active,scores={ec.ds_whirl_cd=1..}] ec.ds_whirl_cd 1

# When timer hits 0 — roll for Whirlwind proc
execute as @a[tag=ec.ds_active,scores={ec.ds_whirl_cd=..0}] at @s run function evercraft:dual_swordsman/whirlwind_passive

# === ABILITY COOLDOWN ===
scoreboard players remove @a[tag=ec.ds_active,scores={ec.ds_ability_cd=1..}] ec.ds_ability_cd 1
