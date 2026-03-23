# Advantage Trees — Player Init
# Called from dreams/on_join when a player joins
# Enables trigger scoreboards so players can use /trigger commands

scoreboard players enable @s adv.menu
scoreboard players enable @s adv.levelup
scoreboard players enable @s adv.prestige
scoreboard players enable @s adv.respec
scoreboard players enable @s adv.cosmetic
scoreboard players enable @s adv.challenge
scoreboard players enable @s adv.treeinfo
scoreboard players enable @s adv.explore
scoreboard players enable @s adv.warcry

# Initialize challenge scores (add 0 = set to 0 only if uninitialized)
scoreboard players add @s adv.chal_id 0
scoreboard players add @s adv.chal_tree 0
scoreboard players add @s adv.chal_prog 0
scoreboard players add @s adv.chal_75 0
scoreboard players add @s adv.weekly_done 0
scoreboard players add @s adv.chal_remind 0
scoreboard players add @s adv.chal_lprog 0
