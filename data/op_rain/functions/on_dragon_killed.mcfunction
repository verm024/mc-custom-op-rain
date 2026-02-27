# OP Rain - Ender Dragon has been slain: disable rain permanently
scoreboard players set $global dragon_dead 1
title @a title {"text":"The Storm Has Ended.","color":"gold","bold":true}
title @a subtitle {"text":"You have slain the Ender Dragon!","color":"yellow"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
