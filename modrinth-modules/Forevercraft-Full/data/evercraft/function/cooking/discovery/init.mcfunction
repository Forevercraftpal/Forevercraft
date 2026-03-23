# ============================================================
# Recipe Discovery — Initialize for new player
# Sets slot 0 of each category as discovered (bit 0 = value 1)
# Uses "unless matches 1.." to avoid overwriting existing discoveries
# ============================================================

execute unless score @s ck.disc0 matches 1.. run scoreboard players set @s ck.disc0 1
execute unless score @s ck.disc1 matches 1.. run scoreboard players set @s ck.disc1 1
execute unless score @s ck.disc2 matches 1.. run scoreboard players set @s ck.disc2 1
execute unless score @s ck.disc3 matches 1.. run scoreboard players set @s ck.disc3 1
execute unless score @s ck.disc4 matches 1.. run scoreboard players set @s ck.disc4 1
execute unless score @s ck.disc5 matches 1.. run scoreboard players set @s ck.disc5 1
execute unless score @s ck.disc6 matches 1.. run scoreboard players set @s ck.disc6 1
execute unless score @s ck.disc7 matches 1.. run scoreboard players set @s ck.disc7 1
execute unless score @s ck.disc8 matches 1.. run scoreboard players set @s ck.disc8 1
execute unless score @s ck.disc9 matches 1.. run scoreboard players set @s ck.disc9 1
execute unless score @s ck.disc10 matches 1.. run scoreboard players set @s ck.disc10 1
scoreboard players set @s ck.disc_init 1
