# === ETERNAL CODEX — ON USE (using_item reward, no consume/restore needed) ===
advancement revoke @s only evercraft:ecodex/use
scoreboard players set @s ec.ecodex_use 1

# Init tab if first use (default to tab 1: Forevercraft Codex)
execute unless score @s ec.ecodex_tab matches 1.. run scoreboard players set @s ec.ecodex_tab 1
# Clamp legacy tab values (was 1-6, now 1-3)
execute if score @s ec.ecodex_tab matches 4.. run scoreboard players set @s ec.ecodex_tab 1
