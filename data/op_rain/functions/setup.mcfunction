# OP Rain - Setup (runs on world load / datapack reload)

# --- Scoreboards ---
# stage       : per-player current stage (1-5)
# rain_timer  : $timer = rain countdown (seconds), $tick = sub-second counter
# dragon_dead : $global = 0 alive | 1 dead
# disp        : $dmin/$dsec/$c60 = display math scratch space
# iron_pickaxe_craft : auto-tracked by MC – total iron_pickaxe crafted per player
# ender_eye_craft    : auto-tracked by MC – total ender_eye crafted per player
scoreboard objectives add stage dummy
scoreboard objectives add rain_timer dummy
scoreboard objectives add dragon_dead dummy
scoreboard objectives add disp dummy
scoreboard objectives add ticks dummy
scoreboard objectives add iron_pickaxe_craft minecraft.crafted:minecraft.iron_pickaxe
scoreboard objectives add ender_eye_craft minecraft.crafted:minecraft.ender_eye

# --- Global variables (preserve values across reloads) ---
execute unless score $timer rain_timer matches 1.. run scoreboard players set $timer rain_timer 300
execute unless score $global dragon_dead matches 0.. run scoreboard players set $global dragon_dead 0
scoreboard players set $tick ticks 0
scoreboard players set $c60 disp 60
