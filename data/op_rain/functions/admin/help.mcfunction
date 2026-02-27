# OP Rain - Admin: Help
# Usage: /function op_rain:admin/help
# To target yourself: /function op_rain:admin/set_stage_<1-5>
# To target another player: /execute as <player> run function op_rain:admin/set_stage_<1-5>

tellraw @s [{"text":"[OP Rain Admin] ","color":"gold","bold":true},{"text":"Stage override commands:","color":"white"}]
tellraw @s [{"text":"  /function op_rain:admin/set_stage_1","color":"green"}]
tellraw @s [{"text":"  /function op_rain:admin/set_stage_2","color":"blue"}]
tellraw @s [{"text":"  /function op_rain:admin/set_stage_3","color":"dark_purple"}]
tellraw @s [{"text":"  /function op_rain:admin/set_stage_4","color":"gold"}]
tellraw @s [{"text":"  /function op_rain:admin/set_stage_5","color":"light_purple"}]
tellraw @s [{"text":"  To override another player: ","color":"gray"},{"text":"/execute as <player> run function op_rain:admin/set_stage_<N>","color":"yellow"}]
