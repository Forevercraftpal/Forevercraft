# Entity Hit System cooldown
scoreboard players remove @s[scores={ec.entity=1..}] ec.entity 1
tag @s[scores={ec.entity=..0}] remove ec.entity

# Timers
execute if entity @s[scores={ec.absorb_steal=1..}] run function evercraft:treasure/runes/gilded/timer

# === RARITY CRATE PARTICLES ===
# OPT: Early exit per rarity — entities have only ONE rarity tag, skip remaining checks after match

# Lower tiers (cannot be downgraded — safe to return immediately)
execute if entity @s[tag=ec.common,scores={ec.plot=1..}] positioned ~ ~0.5 ~ run function evercraft:treasure/particles/common/animate
execute if entity @s[tag=ec.common] run return 0
execute if entity @s[tag=ec.uncommon,scores={ec.plot=1..}] positioned ~ ~0.5 ~ run function evercraft:treasure/particles/uncommon/animate
execute if entity @s[tag=ec.uncommon] run return 0
execute if entity @s[tag=ec.rare,scores={ec.plot=1..}] positioned ~ ~0.5 ~ run function evercraft:treasure/particles/rare/animate
execute if entity @s[tag=ec.rare] run return 0

# Higher tiers: luck-gate at spawn moment (plot=1), then animate
# Luck gates may cascade downgrade: mythical→exquisite→ornate→rare
execute if entity @s[tag=ec.mythical,scores={ec.plot=1}] run function evercraft:treasure/treasure/luck/gate_mythical
execute if entity @s[tag=ec.exquisite,scores={ec.plot=1}] run function evercraft:treasure/treasure/luck/gate_exquisite
execute if entity @s[tag=ec.ornate,scores={ec.plot=1}] run function evercraft:treasure/treasure/luck/gate_ornate

# After potential downgrade, animate whatever tier remains
execute if entity @s[tag=ec.ornate,scores={ec.plot=1..}] positioned ~ ~0.5 ~ run function evercraft:treasure/particles/ornate/animate
execute if entity @s[tag=ec.ornate] run return 0
execute if entity @s[tag=ec.exquisite,scores={ec.plot=1..}] run function evercraft:treasure/particles/exquisite/animate
execute if entity @s[tag=ec.exquisite] run return 0
execute if entity @s[tag=ec.mythical,scores={ec.plot=1..}] run function evercraft:treasure/particles/mythical/animate
execute if entity @s[tag=ec.mythical] run return 0
# If downgraded to rare on spawn tick, rare's return above catches it on the next tick

# Custom Weapons with Armor Stand detection
execute if entity @s[tag=ec.deto_mine] run function evercraft:treasure/items/weapons/deto_mine/main

# Treasure Container System (scoreboard-based replacement for enchantments)
execute if entity @s[tag=ec.treasure_container] run function evercraft:treasure/treasure/container/tick

# Biome test timer (despawn after 3 minutes)
execute if entity @s[tag=ec.biome_test,scores={ec.plot=1..}] run scoreboard players remove @s ec.plot 1
execute if entity @s[tag=ec.biome_test,scores={ec.plot=0}] run function evercraft:treasure/test/cleanup_biome_chests