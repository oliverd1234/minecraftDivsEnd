#setting home if at a valid location
execute at @s if predicate vr:valid_home run function vr:home/set
execute unless score @s vr.id matches 0.. run function vr:player_init