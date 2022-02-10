execute as @e[type=minecraft:area_effect_cloud,tag=!rwall_aec,nbt={Effects:[{Id:27b,Amplifier:0b}]}] at @s run function of:aec/tick

#base version
execute as @a if score @s of.cooldown matches 1.. run function of:player/cooldown

#giving cooldown item to player
execute as @a[tag=of.used] run function of:player/use
execute as @a[tag=of.end_cd] run function of:player/end_cooldown
execute if score current= of.id matches 0.. as @a[tag=!of.reg] run function of:player/init