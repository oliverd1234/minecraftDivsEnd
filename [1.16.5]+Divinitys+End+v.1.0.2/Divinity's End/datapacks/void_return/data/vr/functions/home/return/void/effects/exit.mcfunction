#tag
tag @s remove adri_invoid

#potion effects
effect give @s minecraft:slow_falling 1 0 true

#scheduling particle and playsound functions
tag @s add vr.sc.exit
schedule function vr:home/return/void/effects/scheduled/exit 2t append