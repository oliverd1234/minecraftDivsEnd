
############
# Crystals #
############

# Starting crystal
execute as @s[tag=!activate1] if block 3385 73 -109 stone_button[powered=true] run tellraw @a {"text":"Temporal crystal activated!","color":"red"}
execute as @s[tag=!activate1] if block 3385 73 -109 stone_button[powered=true] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1 1
execute as @s[tag=!activate1] if block 3385 73 -109 stone_button[powered=true] run tag @s add activate1
execute as @s[tag=activate1] if block 3386 73 -109 quartz_block run fill 3386 70 -110 3388 75 -108 red_stained_glass replace white_stained_glass
execute as @s[tag=activate1] if block 3386 73 -109 quartz_block run fill 3386 70 -110 3388 75 -108 red_stained_glass_pane replace white_stained_glass_pane
execute as @s[tag=activate1] if block 3386 73 -109 quartz_block run fill 3416 64 -107 3388 70 -111 redstone_block replace structure_void
execute as @s[tag=activate1] if block 3386 73 -109 quartz_block run fill 3386 70 -110 3388 75 -108 red_concrete replace quartz_block
execute as @s[tag=activate1] if block 3593 78 -109 structure_void run fill 3589 67 -111 3606 80 -106 redstone_block replace structure_void

# Timeless Cavern crystal
execute as @s[tag=!activate2] if block 3599 150 -516 stone_button[powered=true] run tellraw @a {"text":"Temporal crystal activated!","color":"red"}
execute as @s[tag=!activate2] if block 3599 150 -516 stone_button[powered=true] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1 1
execute as @s[tag=!activate2] if block 3599 150 -516 stone_button[powered=true] run tag @s add activate2
execute as @s[tag=activate2] if block 3598 150 -516 quartz_block run fill 3598 147 -515 3596 152 -517 red_stained_glass replace white_stained_glass
execute as @s[tag=activate2] if block 3598 150 -516 quartz_block run fill 3598 147 -515 3596 152 -517 red_stained_glass_pane replace white_stained_glass_pane
execute as @s[tag=activate2] if block 3598 150 -516 quartz_block run fill 3654 125 -430 3658 127 -465 redstone_block replace structure_void
execute as @s[tag=activate2] if block 3598 150 -516 quartz_block run fill 3598 147 -515 3596 152 -517 red_concrete replace quartz_block
execute as @s[tag=activate2] if block 3612 78 -128 structure_void run fill 3614 67 -132 3609 80 -115 redstone_block replace structure_void

# Sword of Damocles crystal
execute as @s[tag=!activate3] if block 3993 163 -109 stone_button[powered=true] run tellraw @a {"text":"Temporal crystal activated!","color":"red"}
execute as @s[tag=!activate3] if block 3993 163 -109 stone_button[powered=true] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1 1
execute as @s[tag=!activate3] if block 3993 163 -109 stone_button[powered=true] run tag @s add activate3
execute as @s[tag=activate3] if block 3994 163 -109 quartz_block run fill 3994 160 -108 3996 165 -110 red_stained_glass replace white_stained_glass
execute as @s[tag=activate3] if block 3994 163 -109 quartz_block run fill 3994 160 -108 3996 165 -110 red_stained_glass_pane replace white_stained_glass_pane
execute as @s[tag=activate3] if block 3994 163 -109 quartz_block run fill 3953 67 -111 3991 67 -107 redstone_block replace structure_void
execute as @s[tag=activate3] if block 3994 163 -109 quartz_block run fill 3994 160 -108 3996 165 -110 red_concrete replace quartz_block
execute as @s[tag=activate3] if block 3631 78 -109 structure_void run fill 3635 67 -107 3618 80 -112 redstone_block replace structure_void

# Clockwork of Creation crystal
execute as @s[tag=!activate4] if block 3612 183 280 stone_button[powered=true] run tellraw @a {"text":"Temporal crystal activated!","color":"red"}
execute as @s[tag=!activate4] if block 3612 183 280 stone_button[powered=true] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1 1
execute as @s[tag=!activate4] if block 3612 183 280 stone_button[powered=true] run tag @s add activate4
execute as @s[tag=activate4] if block 3612 183 281 quartz_block run fill 3613 180 281 3611 185 283 red_stained_glass replace white_stained_glass
execute as @s[tag=activate4] if block 3612 183 281 quartz_block run fill 3613 180 281 3611 185 283 red_stained_glass_pane replace white_stained_glass_pane
execute as @s[tag=activate4] if block 3612 183 281 quartz_block run fill 3614 179 197 3610 179 208 redstone_block replace structure_void
execute as @s[tag=activate4] if block 3612 183 281 quartz_block run fill 3613 180 281 3611 185 283 red_concrete replace quartz_block
execute as @s[tag=activate4] if block 3612 78 -90 structure_void run fill 3610 67 -86 3615 80 -103 redstone_block replace structure_void

# Open wool box!
execute as @s[nbt={Tags:["activate1","activate2","activate3","activate4"]}] if block 3616 78 -113 barrier run tellraw @a {"text":"The hourglass calls...","color":"red"}
execute as @s[nbt={Tags:["activate1","activate2","activate3","activate4"]}] if block 3616 78 -113 barrier run fill 3608 71 -105 3616 78 -113 air replace barrier

# If the crystal button is destroyed, place it back
execute if block 3386 73 -109 air run setblock 3386 73 -109 quartz_block
execute if block 3598 150 -516 air run setblock 3598 150 -516 quartz_block
execute if block 3994 163 -109 air run setblock 3994 163 -109 quartz_block
execute if block 3612 183 281 air run setblock 3612 183 281 quartz_block
execute if block 3385 73 -109 air run setblock 3385 73 -109 stone_button[facing=west]
execute if block 3599 150 -516 air run setblock 3599 150 -516 stone_button[facing=east]
execute if block 3993 163 -109 air run setblock 3993 163 -109 stone_button[facing=west]
execute if block 3612 183 280 air run setblock 3612 183 280 stone_button[facing=north]

# Particles

execute unless entity @s[tag=activate1] run particle minecraft:end_rod 3386.3 73.5 -109 .3 .3 .3 0 1 normal
execute unless entity @s[tag=activate2] run particle minecraft:end_rod 3598.7 150.5 -516 .3 .3 .3 0 1 normal
execute unless entity @s[tag=activate3] run particle minecraft:end_rod 3994.3 163.5 -109 .3 .3 .3 0 1 normal
execute unless entity @s[tag=activate4] run particle minecraft:end_rod 3612 183.5 281.3 .3 .3 .3 0 1 normal