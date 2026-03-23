# T10: THE DEEP VEIN — Weighted ore scoring
# coal=1, iron=2, copper=2, gold=3, lapis=3, redstone=3, diamond=8, emerald=8, debris=16
# Target: 500 ore value

scoreboard players set @s ec.tt_score 0

# Coal (value 1)
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_coal
scoreboard players operation #tt_temp ec.var += @s ec.tt_s_dcoal
scoreboard players operation #tt_temp ec.var -= @s ec.tt_snap
# coal delta × 1
scoreboard players operation @s ec.tt_score += #tt_temp ec.var

# Iron (value 2)
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_iron
scoreboard players operation #tt_temp ec.var += @s ec.tt_s_diron
scoreboard players operation #tt_temp ec.var -= @s ec.tt_snap2
scoreboard players operation #tt_temp ec.var += #tt_temp ec.var
scoreboard players operation @s ec.tt_score += #tt_temp ec.var

# Gold (value 3)
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_gold
scoreboard players operation #tt_temp ec.var += @s ec.tt_s_dgold
scoreboard players operation #tt_temp ec.var -= @s ec.tt_snap3
scoreboard players operation #tt_temp2 ec.var = #tt_temp ec.var
scoreboard players operation #tt_temp ec.var += #tt_temp ec.var
scoreboard players operation #tt_temp ec.var += #tt_temp2 ec.var
scoreboard players operation @s ec.tt_score += #tt_temp ec.var

# Diamond (value 8)
scoreboard players operation #tt_temp ec.var = @s ec.tt_s_dia
scoreboard players operation #tt_temp ec.var += @s ec.tt_s_ddia
scoreboard players operation #tt_temp ec.var -= @s ec.tt_snap4
scoreboard players operation #tt_temp ec.var *= #8 ec.const
scoreboard players operation @s ec.tt_score += #tt_temp ec.var

# Copper (value 2) — from storage
execute store result score #tt_temp ec.var run data get storage evercraft:trials t10.cop
scoreboard players operation #tt_temp2 ec.var = @s ec.tt_s_cop
scoreboard players operation #tt_temp2 ec.var += @s ec.tt_s_dcop
scoreboard players operation #tt_temp2 ec.var -= #tt_temp ec.var
scoreboard players operation #tt_temp2 ec.var += #tt_temp2 ec.var
scoreboard players operation @s ec.tt_score += #tt_temp2 ec.var

# Lapis (value 3) — from storage
execute store result score #tt_temp ec.var run data get storage evercraft:trials t10.lapis
scoreboard players operation #tt_temp2 ec.var = @s ec.tt_s_lapis
scoreboard players operation #tt_temp2 ec.var += @s ec.tt_s_dlapis
scoreboard players operation #tt_temp2 ec.var -= #tt_temp ec.var
scoreboard players operation #tt_temp3 ec.var = #tt_temp2 ec.var
scoreboard players operation #tt_temp2 ec.var += #tt_temp2 ec.var
scoreboard players operation #tt_temp2 ec.var += #tt_temp3 ec.var
scoreboard players operation @s ec.tt_score += #tt_temp2 ec.var

# Redstone (value 3) — from storage
execute store result score #tt_temp ec.var run data get storage evercraft:trials t10.red
scoreboard players operation #tt_temp2 ec.var = @s ec.tt_s_red
scoreboard players operation #tt_temp2 ec.var += @s ec.tt_s_dred
scoreboard players operation #tt_temp2 ec.var -= #tt_temp ec.var
scoreboard players operation #tt_temp3 ec.var = #tt_temp2 ec.var
scoreboard players operation #tt_temp2 ec.var += #tt_temp2 ec.var
scoreboard players operation #tt_temp2 ec.var += #tt_temp3 ec.var
scoreboard players operation @s ec.tt_score += #tt_temp2 ec.var

# Emerald (value 8) — from storage
execute store result score #tt_temp ec.var run data get storage evercraft:trials t10.emer
scoreboard players operation #tt_temp2 ec.var = @s ec.tt_s_emer
scoreboard players operation #tt_temp2 ec.var += @s ec.tt_s_demer
scoreboard players operation #tt_temp2 ec.var -= #tt_temp ec.var
scoreboard players operation #tt_temp2 ec.var *= #8 ec.const
scoreboard players operation @s ec.tt_score += #tt_temp2 ec.var

# Ancient Debris (value 16) — from storage
execute store result score #tt_temp ec.var run data get storage evercraft:trials t10.debris
scoreboard players operation #tt_temp2 ec.var = @s ec.tt_s_debris
scoreboard players operation #tt_temp2 ec.var -= #tt_temp ec.var
scoreboard players operation #tt_temp3 ec.var = #tt_temp2 ec.var
scoreboard players operation #tt_temp2 ec.var *= #8 ec.const
scoreboard players operation #tt_temp2 ec.var += #tt_temp2 ec.var
scoreboard players operation @s ec.tt_score += #tt_temp2 ec.var

# Floor at 0
execute if score @s ec.tt_score matches ..-1 run scoreboard players set @s ec.tt_score 0
