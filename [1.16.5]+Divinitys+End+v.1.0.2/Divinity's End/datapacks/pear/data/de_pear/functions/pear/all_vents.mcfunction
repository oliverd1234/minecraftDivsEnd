execute as @a at @s run playsound minecraft:entity.zombie_horse.death hostile @s ~ ~ ~ 10 0.5

tellraw @a {"text":"With all the vents active, the Seer's tower is purged from the toxic blight, and can be explored without other assistance. You can't help but stare in dread, wondering what horrors lurk within...","color":"dark_aqua","bold":false,"italic":false}

tag @a add vent_alpha
tag @a add vent_beta
tag @a add vent_gamma
tag @a add vent_delta
tag @a add vent_epsilon