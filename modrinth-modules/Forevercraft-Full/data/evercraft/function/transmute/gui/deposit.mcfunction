# Artifact Transmutation — Deposit held artifact
# Run as: player, at player position
# Checks mainhand for an artifact, determines/validates tier, consumes it

# Calculate required count (tier-variable + Artificer discount)
function evercraft:transmute/gui/calc_required

# Already full?
execute if score @s tx.count >= @s tx.required run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Slots full! Click [Transmute!] to upgrade.",color:"yellow"}]

# Check if holding an artifact, artifact shard, or awakening stone
execute unless items entity @s weapon.mainhand *[custom_data~{is_artifact:true}] unless items entity @s weapon.mainhand *[custom_data~{artifact_shard:true}] unless items entity @s weapon.mainhand *[custom_data~{awakening_stone:true}] run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Hold an artifact or awakening stone first!",color:"red"}]

# === AWAKENING STONE BRANCH (counts as half a deposit) ===
execute if items entity @s weapon.mainhand *[custom_data~{awakening_stone:true}] run return run function evercraft:transmute/gui/deposit_stone

# Determine tier of held artifact (artifact shards count as common)
scoreboard players set @s tx.temp 0
execute if items entity @s weapon.mainhand *[custom_data~{artifact_shard:true}] run scoreboard players set @s tx.temp 1
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"common"}] run scoreboard players set @s tx.temp 1
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"uncommon"}] run scoreboard players set @s tx.temp 2
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"rare"}] run scoreboard players set @s tx.temp 3
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"ornate"}] run scoreboard players set @s tx.temp 4
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"exquisite"}] run scoreboard players set @s tx.temp 5
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"mythical"}] run scoreboard players set @s tx.temp 6

# If tier couldn't be determined (missing tier field), reject
execute if score @s tx.temp matches 0 run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"This artifact has no tier data and can't be transmuted.",color:"red"}]

# First deposit — set the tier, then recalculate required with known tier
scoreboard players set #tx_first ec.var 0
execute if score @s tx.tier matches ..0 run scoreboard players set #tx_first ec.var 1
execute if score @s tx.tier matches ..0 run scoreboard players operation @s tx.tier = @s tx.temp
execute if score #tx_first ec.var matches 1 run function evercraft:transmute/gui/calc_required

# Subsequent deposits — verify tier matches
execute if score #tx_first ec.var matches 0 unless score @s tx.temp = @s tx.tier run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Tier mismatch! All artifacts must be the same tier.",color:"red"}]

# === CONFIRMATION GATE (enchanted / mastered / ornate+) ===
# If TX.DepositConfirmed is set, all `unless` checks are skipped → falls through to consume
# Warn if artifact has been awakened/mastered
execute unless entity @s[tag=TX.DepositConfirmed] if items entity @s weapon.mainhand *[custom_data~{awakened:1b}] run return run function evercraft:transmute/gui/deposit_warn
# Warn if ornate+ tier (including mythical)
execute unless entity @s[tag=TX.DepositConfirmed] if score @s tx.temp matches 4.. run return run function evercraft:transmute/gui/deposit_warn
# Warn if item has enchantments
execute unless entity @s[tag=TX.DepositConfirmed] store result score #tx_ench ec.var run data get entity @s SelectedItem.components."minecraft:enchantments".levels
execute unless entity @s[tag=TX.DepositConfirmed] if score #tx_ench ec.var matches 1.. run return run function evercraft:transmute/gui/deposit_warn
# Clear confirmed flag (no-op if wasn't set)
tag @s remove TX.DepositConfirmed

# === BOSS ARTIFACT FLAG (counts as half, must check before consume) ===
scoreboard players set #tx_is_boss ec.var 0
execute if items entity @s weapon.mainhand *[custom_data~{boss_exclusive:true}] run scoreboard players set #tx_is_boss ec.var 1

# === STORE MYTHICAL ARTIFACT IDs (for reroll exclusion) ===
# Must happen BEFORE clear — SelectedItem changes after clearing
execute if score @s tx.tier matches 6 if score @s tx.count matches 0 run data modify storage evercraft:transmute temp.mythical_1 set from entity @s SelectedItem.components."minecraft:custom_data".artifact
execute if score @s tx.tier matches 6 if score @s tx.count matches 1 run data modify storage evercraft:transmute temp.mythical_2 set from entity @s SelectedItem.components."minecraft:custom_data".artifact

# === CONSUME THE ARTIFACT (target mainhand, not lowest inventory slot) ===
execute store result score #tx_mh ec.var run data get entity @s SelectedItem.count
# Stacked items (shards): save item for count-1 restoration
execute if score #tx_mh ec.var matches 2.. run data modify storage evercraft:transmute temp.restore set from entity @s SelectedItem
execute if score #tx_mh ec.var matches 2.. run scoreboard players remove #tx_mh ec.var 1
execute if score #tx_mh ec.var matches 2.. store result storage evercraft:transmute temp.restore.count int 1 run scoreboard players get #tx_mh ec.var
# Remove mainhand item
item replace entity @s weapon.mainhand with minecraft:air
# Restore remaining stack via hopper minecart
execute if score #tx_mh ec.var matches 1.. run function evercraft:transmute/gui/deposit_restore

# Increment deposit count (boss artifacts count as half)
execute if score #tx_is_boss ec.var matches 0 run scoreboard players add @s tx.count 1
execute if score #tx_is_boss ec.var matches 1 run scoreboard players add @s tx.half 1
execute if score #tx_is_boss ec.var matches 1 run scoreboard players operation #tx_full ec.var = @s tx.half
execute if score #tx_is_boss ec.var matches 1 run scoreboard players operation #tx_full ec.var /= #2 adv.temp
execute if score #tx_is_boss ec.var matches 1 run scoreboard players operation @s tx.count += #tx_full ec.var
execute if score #tx_is_boss ec.var matches 1 run scoreboard players operation @s tx.half %= #2 adv.temp

# Feedback
playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.3 1.5
particle minecraft:enchant ~ ~1 ~ 0.3 0.3 0.3 0.5 15

# Refresh GUI
function evercraft:transmute/gui/refresh
