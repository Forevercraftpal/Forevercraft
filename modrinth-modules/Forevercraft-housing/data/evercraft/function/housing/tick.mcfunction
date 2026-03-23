# ============================================================
# Player Housing System — Tick (2s self-schedule)
# Handles: interaction detection, break detection, zone checks, particles
# ============================================================

# Self-schedule first so loop never dies
schedule function evercraft:housing/tick 2s replace

# Detect right-click on hearthstone interaction entities
execute as @e[type=interaction,tag=HS.Interact] at @s if data entity @s interaction run function evercraft:housing/on_interact

# OPT: All marker checks (break, particles) consolidated into 1 entity scan
# Particles proximity-gated (skip if no player within 48 blocks)
execute as @e[type=marker,tag=HS.Marker] at @s run function evercraft:housing/tick_marker

# Validate stash barrel markers (clean up if barrel block broken)
execute as @e[type=marker,tag=HS.Stash] at @s run function evercraft:housing/stash/validate_containers

# Zone checks for all players with homes
execute as @a[scores={hs.tier=1..}] at @s run function evercraft:housing/zone/check

# Visitor detection (check if other players are in each homeowner's zone)
execute as @a[scores={hs.tier=1..}] at @s run function evercraft:housing/zone/visitor_check

# Clear visiting tag from players no longer near any home (checked per-player)
execute as @a[tag=hs.visiting] at @s run function evercraft:housing/zone/visitor_leave_check

# Tag new snow golems built by homeowners in their zone
execute if entity @e[type=snow_golem,tag=!hs.checked,limit=1] run function evercraft:housing/golem/tag_new

# Tag new snow golems built by guild members in their guild zone
execute if entity @e[type=snow_golem,tag=!gs.checked,limit=1] run function evercraft:guild/golem/tag_new

# Tag new iron golems built by homeowners in their zone (limit 3)
execute if entity @e[type=iron_golem,tag=!hs.ig_checked,limit=1] run function evercraft:housing/iron_guard/tag_new

# Tag new iron golems built by guild members in their zone (limit 8)
execute if entity @e[type=iron_golem,tag=!gs.ig_checked,limit=1] run function evercraft:guild/iron_guard/tag_new

# Iron guard creeper handling (one-shot + explosion disable)
execute if entity @e[type=iron_golem,tag=hs.iron_guard,limit=1] run function evercraft:housing/iron_guard/tick
execute if entity @e[type=iron_golem,tag=gs.iron_guard,limit=1] run function evercraft:guild/iron_guard/tick

# Home companion tick (wandering, interactions, passive RP)
execute if entity @e[type=chicken, tag=HomeCompanion, limit=1] run function evercraft:companions/handler/home/tick

# Stash label visibility — show only when a player holds the labeler
execute as @a[scores={hs.tier=1..}] at @s if items entity @s weapon.mainhand *[custom_data~{stash_label:true}] run tag @e[type=text_display,tag=HS.StashDisplay,distance=..32] add HS.ShowLabel
# OPT: Only write view_range when state changes (2 @e scans → 1 each)
execute as @e[type=text_display,tag=HS.StashDisplay,tag=HS.ShowLabel,tag=!HS.LabelVisible] run function evercraft:housing/stash/label_show
execute as @e[type=text_display,tag=HS.StashDisplay,tag=!HS.ShowLabel,tag=HS.LabelVisible] run function evercraft:housing/stash/label_hide
tag @e[type=text_display,tag=HS.ShowLabel] remove HS.ShowLabel
