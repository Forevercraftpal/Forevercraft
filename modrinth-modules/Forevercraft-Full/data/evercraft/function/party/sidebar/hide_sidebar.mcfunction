# Party Sidebar — Cleanup when no parties exist
# Display slots persist permanently (set in load), no need to clear them.
# Kill orphaned party cart (no active parties need it)
kill @e[type=hopper_minecart,tag=ec.pty_cart]
