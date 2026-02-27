# OP Rain - Admin: Force set executor to Stage 3
# Usage: /function op_rain:admin/set_stage_3
# Other player: /execute as <player> run function op_rain:admin/set_stage_3
scoreboard players set @s stage 3
title @s title {"text":"Stage 3","color":"dark_purple","bold":true}
title @s subtitle {"text":"Diamond Progression","color":"dark_purple"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
tellraw @s [{"text":"[OP Rain Admin] ","color":"gold","bold":true},{"text":"Stage manually set to ","color":"white"},{"text":"Stage 3","color":"dark_purple","bold":true}]
