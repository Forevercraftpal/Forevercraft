# === PHOENIX CODEX — ON USE (using_item reward, no consume/restore needed) ===
advancement revoke @s only evercraft:phoenix/use
scoreboard players set @s ec.phoenix_use 1

# Init tab if first use (default to tab 1: Forevercraft Codex)
execute unless score @s ec.phoenix_tab matches 1.. run scoreboard players set @s ec.phoenix_tab 1
# Clamp legacy tab values (must be 1-4)
execute if score @s ec.phoenix_tab matches 5.. run scoreboard players set @s ec.phoenix_tab 1
