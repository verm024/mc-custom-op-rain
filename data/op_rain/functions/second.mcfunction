# OP Rain - Runs once per second

# Initialise any players who do not yet have a stage score
execute as @a unless score @s stage matches 1.. run function op_rain:init_player

# If dragon is dead: show permanent end message and stop all active logic
execute if score $global dragon_dead matches 1 run title @a actionbar {"text":"The Storm Has Ended.","color":"gold","bold":true}
execute unless score $global dragon_dead matches 1 run function op_rain:active_second
