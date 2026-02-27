# OP Rain - Admin: Force set executor to Stage 5
# Usage: /function op_rain:admin/set_stage_5
# Other player: /execute as <player> run function op_rain:admin/set_stage_5
scoreboard players set @s stage 5
title @s title {"text":"Stage 5","color":"light_purple","bold":true}
title @s subtitle {"text":"Final Boss Rain","color":"light_purple"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
tellraw @s [{"text":"[OP Rain Admin] ","color":"gold","bold":true},{"text":"Stage manually set to ","color":"white"},{"text":"Stage 5","color":"light_purple","bold":true}]
