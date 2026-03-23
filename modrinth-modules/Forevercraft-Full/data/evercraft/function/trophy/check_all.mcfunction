# Trophy — Check all trophy conditions for a player
# Run as player, called periodically (e.g. every 200 ticks)

# 0: Hearthkeeper — Place your first Hearthstone (hs.tier >= 1)
execute if score @s hs.tier matches 1.. run function evercraft:trophy/give {id:"hearthkeeper",name:"Hearthkeeper",color:"gold",bit:0,texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTFiMGE1YmJjNjk3YzBjNDJhNmNmMWI5YzRjNDQzNWIwNzMyMmZjZTViYjI3ZDgyYjY5MzA4NDNlNWFiN2EwOSJ9fX0=",lore:"Place your first Hearthstone"}

# 1: Grand Architect — Reach 2500 Comfort Score
execute if score @s hs.decor matches 2500.. run function evercraft:trophy/give {id:"grand_architect",name:"Grand Architect",color:"#66BB6A",bit:1,texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzQ5MzEzMDUzN2ZjNGQzNThjZGIzODdjOWRiMDgwODg4NDZiOGJlNTRmMWMxMWMyNTZhMzdlYjRjNjM4YzAifX19",lore:"Reach 2500 Comfort Score"}

# 2: Legendary Builder — Reach 5000 Comfort Score
execute if score @s hs.decor matches 5000.. run function evercraft:trophy/give {id:"legendary_builder",name:"Legendary Builder",color:"light_purple",bit:2,texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjZlYTIxMzU4Mzg0NjE1MzQzNzJmMmRhNmM4NjJkMjFjZDVmM2QyYzcxMTlmMmJiNjc0YmJkNDI3OTEifX19",lore:"Reach 5000 Comfort Score"}

# 3: Dragon Slayer — Defeat the Ender Dragon
execute if entity @s[advancements={minecraft:end/kill_dragon=true}] run function evercraft:trophy/give {id:"dragon_slayer",name:"Dragon Slayer",color:"dark_purple",bit:3,texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjIxOTEwMjljOGNjZDFlYmQ5NTIwNzcyMGNlYWU2OTQ0ZTVlMjBkODg0OGJkZjNkNjdlMGQwZTExMDFiNzhhMSJ9fX0=",lore:"Defeat the Ender Dragon"}

# 4: Wither Bane — Defeat the Wither
execute if entity @s[advancements={minecraft:nether/summon_wither=true}] run function evercraft:trophy/give {id:"wither_bane",name:"Wither Bane",color:"dark_aqua",bit:4,texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTdjNjZmNWE0YjQwODAwNWIzMzZkYTY2NzZlOGY2YTJhNjdlZWEzMTVmYjdlOTEzNjBhY2MwNDc4MDJmYTMyMCJ9fX0=",lore:"Defeat the Wither"}

# 5: World Explorer — Discover 20+ biomes
execute if score @s jn.biomes matches 20.. run function evercraft:trophy/give {id:"world_explorer",name:"World Explorer",color:"green",bit:5,texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjBhY2EwMTMxNzhhOWY0NzkxM2U4OTRkM2QwYmZkNGIwYjY2MTIwODI1YjlhYWI4YTRkN2Q5YmYwMjQ1YWJmIn19fQ==",lore:"Discover 20 biomes"}

# 6: Lore Keeper — Find 25+ lore fragments
execute if score @s ec.lore_found matches 25.. run function evercraft:trophy/give {id:"lore_keeper",name:"Lore Keeper",color:"yellow",bit:6,texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWI0ZGRiOGFiZWQ2NjA4MjViNjhiOTIyZTIyYTk1NThjMmYyMDg5MzhiZDQzOGVhZWFjY2RjMzk0MSJ9fX0=",lore:"Find 25 lore fragments"}

# 7: Battle Master — Complete 20+ combat milestones
execute if score @s ec.combat_ms matches 20.. run function evercraft:trophy/give {id:"battle_master",name:"Battle Master",color:"red",bit:7,texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTBkZmM4YTM1NjNiZjk5NmY1YzFiNzRiMGIwMTViMmNjZWIyZDA0Zjk0YmJjZGFmYjIyOTlkOGE1OTc5ZmFjMSJ9fX0=",lore:"Complete 20 combat milestones"}

# 8: Pack Leader — Collect 25+ companions
execute if score @s companion.count matches 25.. run function evercraft:trophy/give {id:"pack_leader",name:"Pack Leader",color:"#FF8C00",bit:8,texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjE4NDZjNThiYjk5ODE2YTlhMmEyNmJiM2Y4ODlkYzQzMTMzMjlhZDg2NDM3MDY1NjZhNWIwMjRmMTUifX19",lore:"Collect 25 companions"}

# 9: CraftForever Star — Reach Artisan Rank 50+
execute if score @s ec.cf_rank matches 50.. run function evercraft:trophy/give {id:"craftforever_star",name:"CraftForever Star",color:"aqua",bit:9,texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWI0MjVhYTNkOTQ2MThhODdkYWM5Yzk0ZjM3N2FmNmNhNDk4NGMwNzU3OTY3NGZhZDkxN2Y2MDJiN2JmMjM1In19fQ==",lore:"Reach Artisan Rank 50"}

# 10: Treasure Hunter — Open 50+ structure crates
execute if score @s ec.crates_opened matches 50.. run function evercraft:trophy/give {id:"treasure_hunter",name:"Treasure Hunter",color:"gold",bit:10,texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWM5NmJlNzg4NmViN2RmNzU1MjVhMzYzZTVmNTQ5NjI2YzIxMzg4ZjBmZGE5ODhhNmU4YmY0ODdhNTMifX19",lore:"Open 50 structure crates"}

# 11: Expeditionist — Complete 50+ laborer expeditions
execute if score @s ec.lb_expeditions matches 50.. run function evercraft:trophy/give {id:"expeditionist",name:"Expeditionist",color:"dark_aqua",bit:11,texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGJlNjIyNmQ2MWVjY2NkYjU3MzJiNmY3MTU2MGQ2NDAxZDJjYTBlZmY4ZTFhYWZiYmUzY2I3M2ZiNWE5ZiJ9fX0=",lore:"Complete 50 laborer expeditions"}

# 12: Realm Champion — Complete all 32 realm milestones
execute if score @s ec.rm_complete matches 32.. run function evercraft:trophy/give {id:"realm_champion",name:"Realm Champion",color:"#E0B0FF",bit:12,texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDU1ODdkYTdmZTczMzZlOGFiOWY3OTFlYTVlMmNmYzhhODI3Y2E5NTk1NjdlYjlkNTNhNjQ3YmFiZjk0OGQ1In19fQ==",lore:"Complete all 32 realm milestones"}

# 13: Spirit Forger — Craft a spirit tool (cf_spirit_crafts >= 1)
execute if score @s ec.cf_spirit matches 1.. run function evercraft:trophy/give {id:"spirit_forger",name:"Spirit Forger",color:"dark_red",bit:13,texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmI1OGI4M2YwNzYxOGVhNzlhMWExMjAyYjVhNzdiMTRkZjFjOGUzNWI2ZTFkZWI4YTI2ZDg5NzZmODUzNjBjMyJ9fX0=",lore:"Craft a spirit tool"}

# 14: Guild Legend — Reach max guild contribution (guild_contrib >= 500)
execute if score @s ec.guild_contrib matches 500.. run function evercraft:trophy/give {id:"guild_legend",name:"Guild Legend",color:"dark_purple",bit:14,texture:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODkyNmMxZjJjM2MxNGQwODZjNDBjZmMyMzVmZTkzODY5NGY0YTUxMDY3YWRhNDcyNmI0ODZlYTFjODdiMDNlMiJ9fX0=",lore:"Reach max guild contribution"}
