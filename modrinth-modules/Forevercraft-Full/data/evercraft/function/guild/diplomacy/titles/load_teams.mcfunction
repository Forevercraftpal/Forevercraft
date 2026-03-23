# Guild Diplomacy — Title Team Definitions
# 8 teams: 4 winner tiers + 4 loser tiers

# ============================================================================
# WINNER TITLES
# ============================================================================
team add gd.t_w1
team modify gd.t_w1 prefix {text:"Novice Victor ",color:"gray"}
team modify gd.t_w1 friendlyFire false
team add gd.t_w2
team modify gd.t_w2 prefix {text:"Proven Victor ",color:"white"}
team modify gd.t_w2 friendlyFire false
team add gd.t_w3
team modify gd.t_w3 prefix {text:"Veteran Victor ",color:"gold"}
team modify gd.t_w3 friendlyFire false
team add gd.t_w4
team modify gd.t_w4 prefix {text:"Legendary Victor ",color:"gold",bold:true}
team modify gd.t_w4 friendlyFire false

# ============================================================================
# LOSER TITLES
# ============================================================================
team add gd.t_l1
team modify gd.t_l1 prefix {text:"Humbled ",color:"gray"}
team modify gd.t_l1 friendlyFire false
team add gd.t_l2
team modify gd.t_l2 prefix {text:"Battered ",color:"gray",italic:true}
team modify gd.t_l2 friendlyFire false
team add gd.t_l3
team modify gd.t_l3 prefix {text:"Weathered ",color:"dark_gray"}
team modify gd.t_l3 friendlyFire false
team add gd.t_l4
team modify gd.t_l4 prefix {text:"Unbroken ",color:"dark_gray",bold:true}
team modify gd.t_l4 friendlyFire false
