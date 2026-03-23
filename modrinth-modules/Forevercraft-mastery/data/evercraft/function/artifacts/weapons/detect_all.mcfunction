# Artifact Weapon Detection — Consolidated
# OPT: Was 10 separate @a scans in tick.mcfunction. Now 1 @a scan with internal early exits.
# Run as each player (@s)

# Early exit if any weapon is already active (most players in combat)
# A player can only hold one mainhand weapon, so at most one tag is active
execute if entity @s[tag=ec.sp_active] run return 0
execute if entity @s[tag=ec.ds_active] run return 0
execute if entity @s[tag=ec.kt_active] run return 0
execute if entity @s[tag=ec.rg_active] run return 0
execute if entity @s[tag=ec.bk_active] run return 0
execute if entity @s[tag=ec.dn_active] run return 0
execute if entity @s[tag=ec.ht_active] run return 0
execute if entity @s[tag=ec.bl_active] run return 0
execute if entity @s[tag=ec.jv_active] run return 0
execute if entity @s[tag=ec.sk_active] run return 0
execute if entity @s[tag=ec.di_active] run return 0

# No weapon active — check each type (only one can match per player)
# Spirit artifacts checked FIRST (override regular class weapons)
execute if items entity @s weapon.mainhand *[custom_data~{spirit_artifact:true}] run return run function evercraft:spirit/detect
# Dual Swordsman (spirit class — requires Nite or Deih)
execute if items entity @s weapon.mainhand *[custom_data~{spirit_class:"dual_swordsman"}] run return run function evercraft:dual_swordsman/detect
# Regular class weapons
execute if items entity @s weapon.mainhand *[custom_data~{knight:true}] run return run function evercraft:artifacts/knight/detect
execute if items entity @s weapon.mainhand *[custom_data~{rogue:true}] run return run function evercraft:artifacts/rogue/detect
execute if items entity @s weapon.mainhand #minecraft:axes[custom_data~{is_artifact:true}] run return run function evercraft:artifacts/berserker/detect
# Dragon Incarnate (Dragon Fan — dedicated class)
execute if items entity @s weapon.mainhand *[custom_data~{dragon_incarnate:true}] run return run function evercraft:artifacts/dragon_incarnate/detect
execute if items entity @s weapon.mainhand #minecraft:swords[custom_data~{dancer:true}] run return run function evercraft:artifacts/dancer/detect
execute if items entity @s weapon.mainhand crossbow[custom_data~{hunter:true}] run return run function evercraft:artifacts/hunter/detect
execute if items entity @s weapon.mainhand *[custom_data~{beastlord:true}] run return run function evercraft:artifacts/beastlord/detect
execute if items entity @s weapon.mainhand minecraft:trident[custom_data~{javelin:true}] run return run function evercraft:artifacts/javelin/detect
execute if items entity @s weapon.mainhand mace[custom_data~{striker:true}] run return run function evercraft:artifacts/striker/detect
