# Party Management — Spawn Page 1 Content
# Dynamic layout based on ec.party_role (0=no party, 1=leader, 2=member)
# Run as the player, at player, facing the anchor
# All entities tagged Adv.MenuElement + Adv.SectionContent + Adv.PartyPage

# === NO PARTY (role = 0) ===
execute if score @s ec.party_role matches 0 run function evercraft:party/gui/spawn_no_party

# === LEADER (role = 1) ===
execute if score @s ec.party_role matches 1 run function evercraft:party/gui/spawn_leader

# === MEMBER (role = 2) ===
execute if score @s ec.party_role matches 2 run function evercraft:party/gui/spawn_member
