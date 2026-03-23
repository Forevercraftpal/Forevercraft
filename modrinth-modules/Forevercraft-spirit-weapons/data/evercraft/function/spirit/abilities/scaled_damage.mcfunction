# Spirit Abilities — Apply Effectiveness-Scaled Damage
# Macro function: called with storage containing base, type, and eff (effectiveness %)
# Usage (from PLAYER context, before execute as @e on targets):
#   execute store result storage evercraft:temp sp_dmg.eff int 1 run scoreboard players get @s ec.sp_eff
#   data modify storage evercraft:temp sp_dmg.base set value 12
#   data modify storage evercraft:temp sp_dmg.type set value "player_attack"
#   execute as @e[...targets...] run function evercraft:spirit/abilities/scaled_damage with storage evercraft:temp sp_dmg
#
# Run as: the TARGET entity (the mob being damaged)
# Effectiveness is passed via storage — safe for multiplayer

# Calculate: base * eff / 100
$scoreboard players set #sp_base_dmg ec.var $(base)
$scoreboard players set #sp_eff_tmp ec.var $(eff)
scoreboard players operation #sp_base_dmg ec.var *= #sp_eff_tmp ec.var
scoreboard players operation #sp_base_dmg ec.var /= #100 ec.const
# Minimum 1 damage
execute if score #sp_base_dmg ec.var matches ..0 run scoreboard players set #sp_base_dmg ec.var 1
# Store final value to storage, then apply via macro
execute store result storage evercraft:temp sp_dmg.sp_final_dmg int 1 run scoreboard players get #sp_base_dmg ec.var
function evercraft:spirit/abilities/apply_damage with storage evercraft:temp sp_dmg
