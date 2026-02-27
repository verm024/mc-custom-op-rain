# OP Rain - Check dimension-based stage upgrades (runs every second)

# Stage 3: Enter the Nether (only if currently below stage 3)
execute as @a[nbt={Dimension:"minecraft:the_nether"}] if score @s stage matches ..2 run function op_rain:stage_up_3

# Stage 5: Enter the End (only if currently below stage 5)
execute as @a[nbt={Dimension:"minecraft:the_end"}] if score @s stage matches ..4 run function op_rain:stage_up_5
