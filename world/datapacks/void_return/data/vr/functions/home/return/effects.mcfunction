##warp effects
#potion effects
effect give @s minecraft:slow_falling 1 0 true

#scheduling particle and playsound functions
tag @s add vr.sc
schedule function vr:home/return/effects/scheduled 2t append

#player health modification
scoreboard players operation set_health= vr.main = @s vr.hp
scoreboard players remove set_health= vr.main 10
function vr:home/return/set_health