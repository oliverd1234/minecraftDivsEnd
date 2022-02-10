#only running the data modification once because adri why
execute unless entity @s[tag=olympianfire] run function of:aec/new

#effects on effected mobs
execute as @e[type=#cartographer_core:hostile,distance=..5,nbt={ActiveEffects:[{Id:27b,Amplifier:0b}]}] run effect give @s wither 3 0
execute as @e[type=#cartographer_core:hostile,distance=..5,nbt={ActiveEffects:[{Id:27b,Amplifier:0b}]}] run effect give @s slowness 3 1
execute as @e[type=#cartographer_core:hostile,distance=..5,nbt={ActiveEffects:[{Id:27b,Amplifier:0b}]}] run data merge entity @s {Fire:60}