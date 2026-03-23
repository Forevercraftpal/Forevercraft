# Mining Trial — Snapshot current mining stats for delta tracking
# Run as: the player starting a mining trial
# ec.tt_s_* are stat-tracking scoreboards (auto-update as player mines)
# ec.tt_snap is a dummy that stores the starting aggregate value

# Compute starting total based on tier needs
# T1/T6: count stone + diorite + granite + andesite + deepslate (general blocks)
# T2: count iron ore (both variants)
# T3: count gold ore (both variants)
# T4: count iron + gold + copper + lapis (each separately, use snap/snap2/snap3/snap4)
# T5: count diamond ore (both variants)
# T7: count all ores mined near markers
# T8: count gold ore (but penalize other ores)
# T9: bitfield approach (each ore type is a flag)
# T10: weighted sum of all ores

# Store aggregate snapshot based on tier
# T1: stone + variants
execute if score @s ec.tt_tier matches 1..1 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_stone
execute if score @s ec.tt_tier matches 1..1 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_dslate
execute if score @s ec.tt_tier matches 1..1 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_dior
execute if score @s ec.tt_tier matches 1..1 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_gran
execute if score @s ec.tt_tier matches 1..1 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_ande

# T2: iron ore (both variants)
execute if score @s ec.tt_tier matches 2 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_iron
execute if score @s ec.tt_tier matches 2 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_diron

# T3: gold ore (both variants)
execute if score @s ec.tt_tier matches 3 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_gold
execute if score @s ec.tt_tier matches 3 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_dgold

# T4: 4 ore types (10 each needed) — snap = iron, snap2 = gold, snap3 = copper, snap4 = lapis
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_iron
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_diron
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap2 = @s ec.tt_s_gold
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap2 += @s ec.tt_s_dgold
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap3 = @s ec.tt_s_cop
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap3 += @s ec.tt_s_dcop
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap4 = @s ec.tt_s_lapis
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap4 += @s ec.tt_s_dlapis

# T5: diamond ore (both variants)
execute if score @s ec.tt_tier matches 5 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_dia
execute if score @s ec.tt_tier matches 5 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_ddia

# T6: total blocks (all mineable types)
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_stone
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_dslate
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_dior
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_gran
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_ande

# T7: all ore types combined (finding hidden pockets)
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_iron
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_diron
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_gold
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_dgold
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_dia
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_ddia
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_emer
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_lapis
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_dlapis

# T8: gold ore only (snap = gold, snap2 = total non-gold ores for penalty)
execute if score @s ec.tt_tier matches 8 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_gold
execute if score @s ec.tt_tier matches 8 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_dgold
execute if score @s ec.tt_tier matches 8 run scoreboard players operation @s ec.tt_snap2 = @s ec.tt_s_iron
execute if score @s ec.tt_tier matches 8 run scoreboard players operation @s ec.tt_snap2 += @s ec.tt_s_diron
execute if score @s ec.tt_tier matches 8 run scoreboard players operation @s ec.tt_snap2 += @s ec.tt_s_cop
execute if score @s ec.tt_tier matches 8 run scoreboard players operation @s ec.tt_snap2 += @s ec.tt_s_dcop
execute if score @s ec.tt_tier matches 8 run scoreboard players operation @s ec.tt_snap2 += @s ec.tt_s_lapis
execute if score @s ec.tt_tier matches 8 run scoreboard players operation @s ec.tt_snap2 += @s ec.tt_s_dlapis

# T9: all ore types (snap stores each individually for bitfield, using separate function)
execute if score @s ec.tt_tier matches 9 run function evercraft:craftforever/trials/types/mining/snapshot_t9

# T10: all ores (weighted scoring — snapshot all individual types)
execute if score @s ec.tt_tier matches 10 run function evercraft:craftforever/trials/types/mining/snapshot_t10
