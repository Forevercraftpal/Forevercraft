# Black Market — Load Player Data (Macro)
# Initialize escrow arrays if they don't exist yet
$execute unless data storage eden:database black_market.escrow.u$(u0)_$(u1)_$(u2)_$(u3) run data modify storage eden:database black_market.escrow.u$(u0)_$(u1)_$(u2)_$(u3) set value {items:[],balance:0,sale_pending:0b}

# Load listing count (length of items array)
$execute store result score @s ec.bm_listings run data get storage eden:database black_market.escrow.u$(u0)_$(u1)_$(u2)_$(u3).items

# Load balance
$execute store result score @s ec.bm_balance run data get storage eden:database black_market.escrow.u$(u0)_$(u1)_$(u2)_$(u3).balance
