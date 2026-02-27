# OP Rain - Trigger rain for every online player based on their current stage
# Each player gets items appropriate to their own stage spawning around them.

execute as @a at @s if score @s stage matches 1 run function op_rain:rain/stage_1
execute as @a at @s if score @s stage matches 2 run function op_rain:rain/stage_2
execute as @a at @s if score @s stage matches 3 run function op_rain:rain/stage_3
execute as @a at @s if score @s stage matches 4 run function op_rain:rain/stage_4
execute as @a at @s if score @s stage matches 5 run function op_rain:rain/stage_5

# Light thunder sound for all players at their own position
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1
