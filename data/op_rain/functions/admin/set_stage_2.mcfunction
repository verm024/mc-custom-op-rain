# OP Rain - Admin: Force set executor to Stage 2
# Usage: /function op_rain:admin/set_stage_2
# Other player: /execute as <player> run function op_rain:admin/set_stage_2
scoreboard players set @s stage 2
title @s title {"text":"Stage 2","color":"blue","bold":true}
title @s subtitle {"text":"Iron Era","color":"blue"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
tellraw @s [{"text":"[OP Rain Admin] ","color":"gold","bold":true},{"text":"Stage manually set to ","color":"white"},{"text":"Stage 2","color":"blue","bold":true}]
