# OP Rain - Update actionbar for every online player
# Format:  Stage: X    Rain in: Xm Ys

# Compute minutes and seconds from the global countdown
scoreboard players operation $dmin disp = $timer rain_timer
scoreboard players operation $dsec disp = $timer rain_timer
scoreboard players operation $dmin disp /= $c60 disp
scoreboard players operation $dsec disp %= $c60 disp

# Push the actionbar to every player (score @s resolves per-player stage)
execute as @a run title @s actionbar ["",{"text":"Stage: ","color":"yellow"},{"score":{"name":"@s","objective":"stage"},"color":"yellow"},{"text":"    Rain in: ","color":"white"},{"score":{"name":"$dmin","objective":"disp"},"color":"aqua"},{"text":"m ","color":"aqua"},{"score":{"name":"$dsec","objective":"disp"},"color":"aqua"},{"text":"s","color":"aqua"}]
