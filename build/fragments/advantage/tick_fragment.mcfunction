# === ADVANTAGE CODEX: Disconnect recovery ===
# If player had codex open when they disconnected, clean up orphaned entities
execute as @a[tag=!ec.joined,tag=Adv.InMenu] at @s run function evercraft:advantage/gui/close


# === ADVANTAGE TREE SYSTEM ===
# GUI tick — unified hub tick handles all sections (distance, hold, clicks)
execute as @a[tag=Adv.InMenu] at @s run function evercraft:codex/hub/tick
# Handle menu trigger (legacy — opens hub now instead of advantage trees directly)
execute as @a[scores={adv.menu=1..}] at @s run function evercraft:codex/hub/open
scoreboard players enable @a[scores={adv.menu=1..}] adv.menu
scoreboard players set @a[scores={adv.menu=1..}] adv.menu 0
# GUI clear trigger (from help menu chat click)
execute as @a[scores={adv.guiclear=1..}] at @s run function evercraft:codex/hub/help/gui_clear_confirm
scoreboard players enable @a[scores={adv.guiclear=1..}] adv.guiclear
scoreboard players set @a[scores={adv.guiclear=1..}] adv.guiclear 0
# Handle bulk claim trigger (1=realm, 2=personal stages, 3=craftforever, 4=affinity, 5=lore, 6=biome, 10-15=per-category)
execute as @a[scores={ec.bulk_clm=1}] run function evercraft:claim/bulk_claim_personal
execute as @a[scores={ec.bulk_clm=2}] run function evercraft:claim/bulk_claim_personal_stages
execute as @a[scores={ec.bulk_clm=2}] run scoreboard players set @s ec.claim_shw -1
execute as @a[scores={ec.bulk_clm=3}] run function evercraft:claim/bulk_claim_craftforever
execute as @a[scores={ec.bulk_clm=4}] run function evercraft:claim/bulk_claim_affinity
execute as @a[scores={ec.bulk_clm=5}] run function evercraft:claim/bulk_claim_lore
execute as @a[scores={ec.bulk_clm=6}] run function evercraft:claim/bulk_claim_biome
execute as @a[scores={ec.bulk_clm=10}] run function evercraft:claim/bulk_claim_cat_origins
execute as @a[scores={ec.bulk_clm=11}] run function evercraft:claim/bulk_claim_cat_social
execute as @a[scores={ec.bulk_clm=12}] run function evercraft:claim/bulk_claim_cat_guild
execute as @a[scores={ec.bulk_clm=13}] run function evercraft:claim/bulk_claim_cat_adventure
execute as @a[scores={ec.bulk_clm=14}] run function evercraft:claim/bulk_claim_cat_combat
execute as @a[scores={ec.bulk_clm=15}] run function evercraft:claim/bulk_claim_cat_mastery
scoreboard players enable @a[scores={ec.bulk_clm=1..}] ec.bulk_clm
scoreboard players set @a[scores={ec.bulk_clm=1..}] ec.bulk_clm 0
# Handle auto-collect preference trigger (1=enable, 2=decline)
execute as @a[scores={ec.auto_clm=1}] run tellraw @s [{text:"\u2726 ",color:"yellow"},{text:"Auto-collect ",color:"green",bold:true},{text:"enabled! Rewards will be collected when you open the codex.",color:"gray"}]
execute as @a[scores={ec.auto_clm=1}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1.0 1.2
execute as @a[scores={ec.auto_clm=2}] run tellraw @s [{text:"\u2726 ",color:"yellow"},{text:"Auto-collect declined.",color:"gray"},{text:" You can enable it later from the codex settings.",color:"dark_gray"}]
scoreboard players enable @a[scores={ec.auto_clm=1..}] ec.auto_clm
# Handle advantage triggers (levelup, prestige, respec, cosmetic, challenge, etc.)
# OPT: Single @a scan + early-exit function instead of 9 separate @a scans
execute as @a run function evercraft:advantage/check_triggers

# Handle /trigger ec.ncore (Netherite Core configuration)
execute as @a[scores={ec.ncore=1..}] run function evercraft:artifacts/netherite_core/trigger_handler
scoreboard players enable @a[scores={ec.ncore=1..}] ec.ncore
scoreboard players set @a[scores={ec.ncore=1..}] ec.ncore 0

# Handle /trigger ec.codex_tp (Codex of Everything teleport)
execute as @a[scores={ec.codex_tp=1..}] run function evercraft:artifacts/codex_tp/trigger_handler
scoreboard players enable @a[scores={ec.codex_tp=1..}] ec.codex_tp
scoreboard players set @a[scores={ec.codex_tp=1..}] ec.codex_tp 0

# Handle /trigger ec.quest (Quest Board actions)
execute as @a[scores={ec.quest=1..}] run function evercraft:quests/board/trigger_handler
scoreboard players enable @a[scores={ec.quest=1..}] ec.quest
scoreboard players set @a[scores={ec.quest=1..}] ec.quest 0

# Handle /trigger tx.dep_conf (Transmute deposit confirmation)
execute as @a[scores={tx.dep_conf=1..}] at @s run function evercraft:transmute/gui/deposit_confirmed
scoreboard players enable @a[scores={tx.dep_conf=1..}] tx.dep_conf
scoreboard players set @a[scores={tx.dep_conf=1..}] tx.dep_conf 0
