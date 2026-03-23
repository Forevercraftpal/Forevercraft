# Black Market — Save Listing (Macro)
# Initialize if needed
$execute unless data storage eden:database black_market.escrow.u$(u0)_$(u1)_$(u2)_$(u3) run data modify storage eden:database black_market.escrow.u$(u0)_$(u1)_$(u2)_$(u3) set value {items:[],balance:0,sale_pending:0b}

# Append the escrowed item
$data modify storage eden:database black_market.escrow.u$(u0)_$(u1)_$(u2)_$(u3).items append from storage eden:database black_market.temp.escrow_item
