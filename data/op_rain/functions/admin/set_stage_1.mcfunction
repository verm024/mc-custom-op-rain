# OP Rain - Admin: Force set executor to Stage 1
# Usage: /function op_rain:admin/set_stage_1
# Other player: /execute as <player> run function op_rain:admin/set_stage_1
scoreboard players set @s stage 1
title @s title {"text":"Stage 1","color":"green","bold":true}
title @s subtitle {"text":"Survival Assist","color":"green"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
tellraw @s [{"text":"[OP Rain Admin] ","color":"gold","bold":true},{"text":"Stage manually set to ","color":"white"},{"text":"Stage 1","color":"green","bold":true}]
