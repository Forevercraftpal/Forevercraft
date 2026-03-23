# Check active challenge progress — called 1/s per player with active challenge
execute if score @s adv.chal_id matches 1..2 run function evercraft:advantage/challenges/agility_challenges
execute if score @s adv.chal_id matches 3 at @s run function evercraft:advantage/challenges/dexterity_challenges
execute if score @s adv.chal_id matches 4..5 run function evercraft:advantage/challenges/evasion_challenges
execute if score @s adv.chal_id matches 6 run function evercraft:advantage/challenges/stealth_challenges
execute if score @s adv.chal_id matches 7..8 run function evercraft:advantage/challenges/vitality_challenges
execute if score @s adv.chal_id matches 9 run function evercraft:advantage/challenges/taskmaster_challenges
execute if score @s adv.chal_id matches 10 run function evercraft:advantage/challenges/beastmaster_challenges
execute if score @s adv.chal_id matches 11 run function evercraft:advantage/challenges/victorian_challenges
execute if score @s adv.chal_id matches 12 run function evercraft:advantage/challenges/fishing_challenges
execute if score @s adv.chal_id matches 13..14 run function evercraft:advantage/challenges/mining_challenges
execute if score @s adv.chal_id matches 15 run function evercraft:advantage/challenges/gathering_challenges
execute if score @s adv.chal_id matches 16 run function evercraft:advantage/challenges/blacksmith_challenges
execute if score @s adv.chal_id matches 17 run function evercraft:advantage/challenges/explorer_challenges

# Weekly challenges (IDs 18-43) — route to same tree files
execute if score @s adv.chal_id matches 18..19 run function evercraft:advantage/challenges/agility_challenges
execute if score @s adv.chal_id matches 20..21 run function evercraft:advantage/challenges/dexterity_challenges
execute if score @s adv.chal_id matches 22..23 run function evercraft:advantage/challenges/evasion_challenges
execute if score @s adv.chal_id matches 24..25 run function evercraft:advantage/challenges/stealth_challenges
execute if score @s adv.chal_id matches 26..27 run function evercraft:advantage/challenges/vitality_challenges
execute if score @s adv.chal_id matches 28..29 run function evercraft:advantage/challenges/taskmaster_challenges
execute if score @s adv.chal_id matches 30..31 run function evercraft:advantage/challenges/beastmaster_challenges
execute if score @s adv.chal_id matches 32..33 run function evercraft:advantage/challenges/victorian_challenges
execute if score @s adv.chal_id matches 34..35 run function evercraft:advantage/challenges/fishing_challenges
execute if score @s adv.chal_id matches 36..37 run function evercraft:advantage/challenges/mining_challenges
execute if score @s adv.chal_id matches 38..39 run function evercraft:advantage/challenges/gathering_challenges
execute if score @s adv.chal_id matches 40..41 run function evercraft:advantage/challenges/blacksmith_challenges
execute if score @s adv.chal_id matches 42..43 run function evercraft:advantage/challenges/explorer_challenges
