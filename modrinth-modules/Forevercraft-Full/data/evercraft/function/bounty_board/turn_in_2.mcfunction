# ============================================================
# Artifact Bounty Board — Turn In Slot 2
# ============================================================

# Re-verify artifact is still in hand (race condition guard)
execute unless items entity @s weapon.mainhand *[custom_data~{is_artifact:1b}] run return 0

scoreboard players set @s ec.abb_claim_2 1

data modify storage eden:database bounty_board.temp.coins set from storage eden:database bounty_board.bounties[2].coins
data modify storage eden:database bounty_board.temp.name set from storage eden:database bounty_board.bounties[2].name
data modify storage eden:database bounty_board.temp.tier set from storage eden:database bounty_board.bounties[2].tier

item replace entity @s weapon.mainhand with minecraft:air

execute store result score #abb_coins ec.abb_temp run data get storage eden:database bounty_board.temp.coins
scoreboard players operation @s ec.coins += #abb_coins ec.abb_temp

function evercraft:bounty_board/announce with storage eden:database bounty_board.temp

scoreboard players set #reward_roll ec.temp 0
execute store result score #abb_tier ec.abb_temp run data get storage eden:database bounty_board.temp.tier
execute if score #abb_tier ec.abb_temp matches 1 run function evercraft:gacha/pull/grant_common
execute if score #abb_tier ec.abb_temp matches 2 run function evercraft:gacha/pull/grant_uncommon
execute if score #abb_tier ec.abb_temp matches 3 run function evercraft:gacha/pull/grant_rare
execute if score #abb_tier ec.abb_temp matches 4 run function evercraft:gacha/pull/grant_ornate
execute if score #abb_tier ec.abb_temp matches 5 run function evercraft:gacha/pull/grant_exquisite

playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.8 1.2
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.6 1.4
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 15
