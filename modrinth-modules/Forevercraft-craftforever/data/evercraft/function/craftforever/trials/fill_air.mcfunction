# Fill arena volume with air (macro)
# Arena is 48x32x48, starting at (ax, 298, az)
# fill command max is 32768 blocks per call, so split into chunks
# 48x16x48 = 36864 — still too big. Use 48x10x48 = 23040

$execute positioned $(ax) 298 $(az) run fill ~ ~ ~ ~47 ~9 ~47 air
$execute positioned $(ax) 308 $(az) run fill ~ ~ ~ ~47 ~9 ~47 air
$execute positioned $(ax) 318 $(az) run fill ~ ~ ~ ~47 ~9 ~47 air
$execute positioned $(ax) 328 $(az) run fill ~ ~ ~ ~47 ~2 ~47 air
