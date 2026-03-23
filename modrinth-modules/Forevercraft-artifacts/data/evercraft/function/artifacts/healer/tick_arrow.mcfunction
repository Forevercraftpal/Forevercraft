# Healer Arrow — Per-arrow tick (run as arrow/spectral_arrow with healer_arrow tag)
# OPT: Combines damage zeroing + in-ground cleanup into 1 pass per arrow (was 2 passes)

# Zero damage (prevents healing arrows from doing harm during lockout)
data modify entity @s damage set value 0.0d

# Clean up tag when arrow hits a block (no longer in flight)
execute if data entity @s {inBlockState:{}} run tag @s remove healer_arrow
