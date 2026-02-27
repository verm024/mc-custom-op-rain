# OP Rain - Runs every game tick (via #minecraft:tick tag)

# Count up to 20 ticks (1 second)
scoreboard players add $tick ticks 1

# Execute per-second logic at the 20-tick mark then reset
execute if score $tick ticks matches 20.. run function op_rain:second
execute if score $tick ticks matches 20.. run scoreboard players set $tick ticks 0
