# T4: Mine 10 each of 4 ore types
# Score = min(iron_delta, 10) + min(gold_delta, 10) + min(copper_delta, 10) + min(lapis_delta, 10)
# Target is 40 (10 × 4)

# Iron delta (capped at 10)
scoreboard players operation #tt_iron ec.var = @s ec.tt_s_iron
scoreboard players operation #tt_iron ec.var += @s ec.tt_s_diron
scoreboard players operation #tt_iron ec.var -= @s ec.tt_snap
execute if score #tt_iron ec.var matches 11.. run scoreboard players set #tt_iron ec.var 10
execute if score #tt_iron ec.var matches ..-1 run scoreboard players set #tt_iron ec.var 0

# Gold delta (capped at 10)
scoreboard players operation #tt_gold ec.var = @s ec.tt_s_gold
scoreboard players operation #tt_gold ec.var += @s ec.tt_s_dgold
scoreboard players operation #tt_gold ec.var -= @s ec.tt_snap2
execute if score #tt_gold ec.var matches 11.. run scoreboard players set #tt_gold ec.var 10
execute if score #tt_gold ec.var matches ..-1 run scoreboard players set #tt_gold ec.var 0

# Copper delta (capped at 10)
scoreboard players operation #tt_cop ec.var = @s ec.tt_s_cop
scoreboard players operation #tt_cop ec.var += @s ec.tt_s_dcop
scoreboard players operation #tt_cop ec.var -= @s ec.tt_snap3
execute if score #tt_cop ec.var matches 11.. run scoreboard players set #tt_cop ec.var 10
execute if score #tt_cop ec.var matches ..-1 run scoreboard players set #tt_cop ec.var 0

# Lapis delta (capped at 10)
scoreboard players operation #tt_lapis ec.var = @s ec.tt_s_lapis
scoreboard players operation #tt_lapis ec.var += @s ec.tt_s_dlapis
scoreboard players operation #tt_lapis ec.var -= @s ec.tt_snap4
execute if score #tt_lapis ec.var matches 11.. run scoreboard players set #tt_lapis ec.var 10
execute if score #tt_lapis ec.var matches ..-1 run scoreboard players set #tt_lapis ec.var 0

# Sum
scoreboard players operation @s ec.tt_score = #tt_iron ec.var
scoreboard players operation @s ec.tt_score += #tt_gold ec.var
scoreboard players operation @s ec.tt_score += #tt_cop ec.var
scoreboard players operation @s ec.tt_score += #tt_lapis ec.var
