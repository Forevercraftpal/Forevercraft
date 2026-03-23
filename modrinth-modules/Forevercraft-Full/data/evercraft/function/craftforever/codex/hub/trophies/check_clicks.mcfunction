# Trophy Gallery — Check Clicks (page 3)
# Left-click (attack) = show trophy info via tellraw
# Run as player

# === LEFT-CLICK INFO (attack detection) ===

# 0: Hearthkeeper
execute as @e[type=interaction,tag=CF.TrophyCl0,distance=..5] if data entity @s attack run function evercraft:craftforever/codex/hub/trophies/show_trophy_info {name:"Hearthkeeper",color:"gold",requirement:"Place your first Hearthstone",earned_score:"hs.tier",earned_label:"Hearthstone tier",bit:"0"}

# 1: Grand Architect
execute as @e[type=interaction,tag=CF.TrophyCl1,distance=..5] if data entity @s attack run function evercraft:craftforever/codex/hub/trophies/show_trophy_info {name:"Grand Architect",color:"#66BB6A",requirement:"Reach 2500 Comfort Score",earned_score:"hs.decor",earned_label:"Comfort Score",bit:"1"}

# 2: Legendary Builder
execute as @e[type=interaction,tag=CF.TrophyCl2,distance=..5] if data entity @s attack run function evercraft:craftforever/codex/hub/trophies/show_trophy_info {name:"Legendary Builder",color:"light_purple",requirement:"Reach 5000 Comfort Score",earned_score:"hs.decor",earned_label:"Comfort Score",bit:"2"}

# 3: Dragon Slayer
execute as @e[type=interaction,tag=CF.TrophyCl3,distance=..5] if data entity @s attack run function evercraft:craftforever/codex/hub/trophies/show_trophy_info {name:"Dragon Slayer",color:"dark_purple",requirement:"Defeat the Ender Dragon",earned_score:"ach.boss_kills",earned_label:"bosses slain",bit:"3"}

# 4: Wither Bane
execute as @e[type=interaction,tag=CF.TrophyCl4,distance=..5] if data entity @s attack run function evercraft:craftforever/codex/hub/trophies/show_trophy_info {name:"Wither Bane",color:"dark_aqua",requirement:"Defeat the Wither",earned_score:"ach.boss_kills",earned_label:"bosses slain",bit:"4"}

# 5: World Explorer
execute as @e[type=interaction,tag=CF.TrophyCl5,distance=..5] if data entity @s attack run function evercraft:craftforever/codex/hub/trophies/show_trophy_info {name:"World Explorer",color:"green",requirement:"Discover 20 biomes",earned_score:"jn.biomes",earned_label:"biomes discovered",bit:"5"}

# 6: Lore Keeper
execute as @e[type=interaction,tag=CF.TrophyCl6,distance=..5] if data entity @s attack run function evercraft:craftforever/codex/hub/trophies/show_trophy_info {name:"Lore Keeper",color:"yellow",requirement:"Find 25 lore fragments",earned_score:"ec.lore_found",earned_label:"lore found",bit:"6"}

# 7: Battle Master
execute as @e[type=interaction,tag=CF.TrophyCl7,distance=..5] if data entity @s attack run function evercraft:craftforever/codex/hub/trophies/show_trophy_info {name:"Battle Master",color:"red",requirement:"Complete 20 combat milestones",earned_score:"ec.combat_ms",earned_label:"combat milestones",bit:"7"}

# 8: Pack Leader
execute as @e[type=interaction,tag=CF.TrophyCl8,distance=..5] if data entity @s attack run function evercraft:craftforever/codex/hub/trophies/show_trophy_info {name:"Pack Leader",color:"#FF8C00",requirement:"Collect 25 companions",earned_score:"companion.count",earned_label:"companions owned",bit:"8"}

# 9: CraftForever Star
execute as @e[type=interaction,tag=CF.TrophyCl9,distance=..5] if data entity @s attack run function evercraft:craftforever/codex/hub/trophies/show_trophy_info {name:"CraftForever Star",color:"aqua",requirement:"Reach Artisan Rank 50",earned_score:"ec.cf_rank",earned_label:"Artisan Rank",bit:"9"}

# 10: Treasure Hunter
execute as @e[type=interaction,tag=CF.TrophyCl10,distance=..5] if data entity @s attack run function evercraft:craftforever/codex/hub/trophies/show_trophy_info {name:"Treasure Hunter",color:"gold",requirement:"Open 50 structure crates",earned_score:"ec.crates_opened",earned_label:"crates opened",bit:"10"}

# 11: Expeditionist
execute as @e[type=interaction,tag=CF.TrophyCl11,distance=..5] if data entity @s attack run function evercraft:craftforever/codex/hub/trophies/show_trophy_info {name:"Expeditionist",color:"dark_aqua",requirement:"Complete 50 laborer expeditions",earned_score:"ec.lb_expeditions",earned_label:"expeditions done",bit:"11"}

# 12: Realm Champion
execute as @e[type=interaction,tag=CF.TrophyCl12,distance=..5] if data entity @s attack run function evercraft:craftforever/codex/hub/trophies/show_trophy_info {name:"Realm Champion",color:"#E0B0FF",requirement:"Complete all 32 realm milestones",earned_score:"ec.rm_complete",earned_label:"milestones done",bit:"12"}

# 13: Spirit Forger
execute as @e[type=interaction,tag=CF.TrophyCl13,distance=..5] if data entity @s attack run function evercraft:craftforever/codex/hub/trophies/show_trophy_info {name:"Spirit Forger",color:"dark_red",requirement:"Craft a spirit tool",earned_score:"ec.cf_spirit",earned_label:"spirit tools crafted",bit:"13"}

# 14: Guild Legend
execute as @e[type=interaction,tag=CF.TrophyCl14,distance=..5] if data entity @s attack run function evercraft:craftforever/codex/hub/trophies/show_trophy_info {name:"Guild Legend",color:"dark_purple",requirement:"Reach max guild contribution (500)",earned_score:"ec.guild_contrib",earned_label:"guild contribution",bit:"14"}
