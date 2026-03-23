# ============================================================
# Quick Stash — Find first empty container slot and insert (macro)
# Run as: player, positioned at container block (aligned)
# Args: slot (player inventory slot to move from)
# Returns: 1 on success, 0 if container is full
# ============================================================
$execute unless items block ~ ~ ~ container.0 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"0"}
$execute unless items block ~ ~ ~ container.1 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"1"}
$execute unless items block ~ ~ ~ container.2 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"2"}
$execute unless items block ~ ~ ~ container.3 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"3"}
$execute unless items block ~ ~ ~ container.4 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"4"}
$execute unless items block ~ ~ ~ container.5 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"5"}
$execute unless items block ~ ~ ~ container.6 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"6"}
$execute unless items block ~ ~ ~ container.7 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"7"}
$execute unless items block ~ ~ ~ container.8 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"8"}
$execute unless items block ~ ~ ~ container.9 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"9"}
$execute unless items block ~ ~ ~ container.10 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"10"}
$execute unless items block ~ ~ ~ container.11 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"11"}
$execute unless items block ~ ~ ~ container.12 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"12"}
$execute unless items block ~ ~ ~ container.13 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"13"}
$execute unless items block ~ ~ ~ container.14 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"14"}
$execute unless items block ~ ~ ~ container.15 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"15"}
$execute unless items block ~ ~ ~ container.16 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"16"}
$execute unless items block ~ ~ ~ container.17 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"17"}
$execute unless items block ~ ~ ~ container.18 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"18"}
$execute unless items block ~ ~ ~ container.19 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"19"}
$execute unless items block ~ ~ ~ container.20 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"20"}
$execute unless items block ~ ~ ~ container.21 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"21"}
$execute unless items block ~ ~ ~ container.22 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"22"}
$execute unless items block ~ ~ ~ container.23 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"23"}
$execute unless items block ~ ~ ~ container.24 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"24"}
$execute unless items block ~ ~ ~ container.25 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"25"}
$execute unless items block ~ ~ ~ container.26 * run return run function evercraft:housing/stash/do_insert {slot:"$(slot)",barrel_slot:"26"}

# Container is full (all container types have 27 slots per block)
# Double chests: each half is a separate block, label each half independently
return 0
