# Advantage Trees — Trigger Router
# Routes /trigger adv.levelup values 1-14 to the correct tree level-up function

execute if score @s adv.levelup matches 1 run function evercraft:advantage/levelup/agility
execute if score @s adv.levelup matches 2 run function evercraft:advantage/levelup/dexterity
execute if score @s adv.levelup matches 3 run function evercraft:advantage/levelup/evasion
execute if score @s adv.levelup matches 4 run function evercraft:advantage/levelup/stealth
execute if score @s adv.levelup matches 5 run function evercraft:advantage/levelup/vitality
execute if score @s adv.levelup matches 6 run function evercraft:advantage/levelup/taskmaster
execute if score @s adv.levelup matches 7 run function evercraft:advantage/levelup/beastmaster
execute if score @s adv.levelup matches 8 run function evercraft:advantage/levelup/victorian
execute if score @s adv.levelup matches 9 run function evercraft:advantage/levelup/fishing
execute if score @s adv.levelup matches 10 run function evercraft:advantage/levelup/mining
execute if score @s adv.levelup matches 11 run function evercraft:advantage/levelup/gathering
execute if score @s adv.levelup matches 12 run function evercraft:advantage/levelup/blacksmith
execute if score @s adv.levelup matches 13 run function evercraft:advantage/levelup/explorer
execute if score @s adv.levelup matches 14 run function evercraft:advantage/levelup/culinary

# Reset and re-enable levelup trigger
scoreboard players set @s adv.levelup 0
scoreboard players enable @s adv.levelup

# === PRESTIGE TRIGGER ===
# /trigger adv.prestige set <tree_id 1-14>
execute if score @s adv.prestige matches 1..14 run function evercraft:advantage/prestige/triggers
scoreboard players set @s adv.prestige 0
scoreboard players enable @s adv.prestige

# === RESPEC TRIGGER ===
# /trigger adv.respec set <tree_id 1-14>
execute if score @s adv.respec matches 1..14 run function evercraft:advantage/respec/triggers
scoreboard players set @s adv.respec 0
scoreboard players enable @s adv.respec

# === COSMETIC TRIGGER ===
# /trigger adv.cosmetic set <1-114> (1-5=tier toggle, 101-114=tree variant)
# Note: 0 (disable) is handled through GUI toggle, not trigger command
execute if score @s adv.cosmetic matches 1..114 run function evercraft:advantage/cosmetics/triggers
scoreboard players set @s adv.cosmetic 0
scoreboard players enable @s adv.cosmetic

# === CHALLENGE TRIGGER ===
# /trigger adv.challenge set <id> (-1=cancel, 1-17=accept)
# Note: 0 (view menu) removed from trigger — use GUI or /trigger adv.challenge set 0
# Split ranges to avoid matching reset value of 0 from other triggers
execute if score @s adv.challenge matches -1 run function evercraft:advantage/challenges/triggers
execute if score @s adv.challenge matches 1..17 run function evercraft:advantage/challenges/triggers
scoreboard players set @s adv.challenge 0
scoreboard players enable @s adv.challenge

# === TREE INFO TRIGGER ===
# /trigger adv.treeinfo set <1-14> — view prestige ability descriptions
execute if score @s adv.treeinfo matches 1 run function evercraft:advantage/gui/ability_desc/agility
execute if score @s adv.treeinfo matches 2 run function evercraft:advantage/gui/ability_desc/dexterity
execute if score @s adv.treeinfo matches 3 run function evercraft:advantage/gui/ability_desc/evasion
execute if score @s adv.treeinfo matches 4 run function evercraft:advantage/gui/ability_desc/stealth
execute if score @s adv.treeinfo matches 5 run function evercraft:advantage/gui/ability_desc/vitality
execute if score @s adv.treeinfo matches 6 run function evercraft:advantage/gui/ability_desc/taskmaster
execute if score @s adv.treeinfo matches 7 run function evercraft:advantage/gui/ability_desc/beastmaster
execute if score @s adv.treeinfo matches 8 run function evercraft:advantage/gui/ability_desc/victorian
execute if score @s adv.treeinfo matches 9 run function evercraft:advantage/gui/ability_desc/fishing
execute if score @s adv.treeinfo matches 10 run function evercraft:advantage/gui/ability_desc/mining
execute if score @s adv.treeinfo matches 11 run function evercraft:advantage/gui/ability_desc/gathering
execute if score @s adv.treeinfo matches 12 run function evercraft:advantage/gui/ability_desc/blacksmith
execute if score @s adv.treeinfo matches 13 run function evercraft:advantage/gui/ability_desc/explorer
execute if score @s adv.treeinfo matches 14 run function evercraft:advantage/gui/ability_desc/culinary
execute if score @s adv.treeinfo matches 1..14 at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.3 1.5
scoreboard players set @s adv.treeinfo 0
scoreboard players enable @s adv.treeinfo

# === EXPLORER ABILITY TRIGGER ===
# /trigger adv.explore set 1 → Cartographer (locate nearest structure)
# /trigger adv.explore set 2 → Wayfinder (teleport to nearest structure)
execute if score @s adv.explore matches 1 run function evercraft:advantage/prestige/abilities/cartographer_use
execute if score @s adv.explore matches 2 run function evercraft:advantage/prestige/abilities/wayfinder_use
scoreboard players set @s adv.explore 0
scoreboard players enable @s adv.explore

# === BEASTMASTER WAR CRY TRIGGER ===
# /trigger adv.warcry set 1 → War Cry (buff all wolves)
execute if score @s adv.warcry matches 1 run function evercraft:advantage/prestige/abilities/warcry_use
scoreboard players set @s adv.warcry 0
scoreboard players enable @s adv.warcry
