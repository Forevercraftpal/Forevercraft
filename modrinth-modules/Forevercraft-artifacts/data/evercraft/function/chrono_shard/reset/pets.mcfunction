# Chrono Shard — Reset Pet Collection
# WARNING: This is the most destructive reset — all pets, levels, bonds are LOST
# @s = player

# === Despawn active companion if any ===
execute if entity @s[tag=companion.activepet] run function evercraft:companions/handler/menu_v2/do_unsummon

# === Store player's companion.id for marker cleanup ===
scoreboard players operation #cs_pet_id ec.temp = @s companion.id

# === Clear companion data on marker entity ===
# The companion marker stores all pet data — clear it by resetting inventory
execute as @e[type=marker,tag=companion.marker] if score @s companion.id = #cs_pet_id ec.temp run data modify entity @s data.Companions set value []
execute as @e[type=marker,tag=companion.marker] if score @s companion.id = #cs_pet_id ec.temp run data modify entity @s data.HomePets set value []

# === Reset companion scoreboards ===
scoreboard players set @s companion.count 0
scoreboard players set @s companion.exp 0
scoreboard players set @s companion.rp 0
scoreboard players set @s companion.rellevel 0
scoreboard players set @s companion.kills 0
scoreboard players set @s companion.activeslot 0
scoreboard players set @s companion.menupage 0
scoreboard players set @s companion.slot 0

# === Reset home companion scores ===
scoreboard players set @s hc.count 0
scoreboard players set @s hc.slot 0

# === Reset pet gift timers ===
scoreboard players set @s ec.pet_gift 0
scoreboard players set @s ec.pet_gift_day 0

# === Reset companion evolution ===
scoreboard players set @s ec.ce_evolved 0
scoreboard players set @s ec.ce_evolved2 0
tag @s remove ce.evolved_active
tag @s remove ce.evo_emberheart
tag @s remove ce.evo_endwalker
tag @s remove ce.evo_monolith
tag @s remove ce.evo_ashborn
tag @s remove ce.evo_sabertooth

# === Reset companion milestone tracking ===
scoreboard players set @s ach.comp_owned 0
scoreboard players set @s ach.comp_bonded 0
scoreboard players set @s ach.comp_devoted 0
scoreboard players set @s ach.comp_soulbound 0
scoreboard players set @s ach.comp_eternal 0
scoreboard players set @s ach.comp_feeds 0
scoreboard players set @s ach.comp_interacts 0
scoreboard players set @s ach.comp_abilities 0

# === Reset pet duel stats ===
scoreboard players set @s ec.pd_wins 0
scoreboard players set @s ec.pd_losses 0
scoreboard players set @s ec.pd_draws 0
scoreboard players set @s ec.pd_streak 0
scoreboard players set @s ec.pd_best_streak 0

tellraw @s [{"text":"\u2726 ","color":"dark_aqua"},{"text":"\u26a0 Pet Collection","color":"red"},{"text":" has been completely erased.","color":"white"}]
tellraw @s [{"text":"  ","color":"gray"},{"text":"All companions, levels, and bonds are gone.","color":"dark_gray","italic":true}]
