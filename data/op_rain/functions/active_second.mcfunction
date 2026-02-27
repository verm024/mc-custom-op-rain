# OP Rain - Active per-second logic (only called while dragon is alive)

# --- Stage upgrades via crafting stats ---
# Stage 2: Crafted at least 1 Iron Pickaxe and currently stage 1
execute as @a if score @s iron_pickaxe_craft matches 1.. if score @s stage matches ..1 run function op_rain:stage_up_2
# Stage 4: Crafted 12 or more Eye of Ender and currently below stage 4
execute as @a if score @s ender_eye_craft matches 12.. if score @s stage matches ..3 run function op_rain:stage_up_4

# --- Stage upgrades via dimension ---
function op_rain:check_stages

# --- Rain countdown timer ---
scoreboard players remove $timer rain_timer 1
execute if score $timer rain_timer matches ..0 run function op_rain:rain_trigger
execute if score $timer rain_timer matches ..0 run scoreboard players set $timer rain_timer 30

# --- Actionbar display ---
function op_rain:display
