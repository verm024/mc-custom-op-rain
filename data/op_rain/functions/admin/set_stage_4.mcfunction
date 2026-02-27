# OP Rain - Admin: Force set executor to Stage 4
# Usage: /function op_rain:admin/set_stage_4
# Other player: /execute as <player> run function op_rain:admin/set_stage_4
scoreboard players set @s stage 4
title @s title {"text":"Stage 4","color":"gold","bold":true}
title @s subtitle {"text":"Pre-End OP","color":"gold"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
tellraw @s [{"text":"[OP Rain Admin] ","color":"gold","bold":true},{"text":"Stage manually set to ","color":"white"},{"text":"Stage 4","color":"gold","bold":true}]
