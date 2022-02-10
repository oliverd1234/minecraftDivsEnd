#{ Player Setup
execute as @a[tag=!adri_setup] run function adri:playersetup
#}

#{ Sightseeing
execute as @a[scores={sneak=1..},nbt={SelectedItem:{tag:{Sightseeing:1}}}] run function adri:s/see
execute as @a[scores={sneak=1..},nbt={Inventory:[{Slot:-106b,tag:{Sightseeing:1}}]}] run function adri:s/see
scoreboard players set @a[scores={sneak=1..}] sneak 0
#}

#{ Area Messages

execute positioned 453 12 -864 as @a[tag=!msg-1,distance=..5] at @s run function adri:ac/msg-1
execute positioned 36 151 242 as @a[tag=!msg1,distance=..10] at @s run function adri:ac/msg1
execute positioned -79 158 -180 as @a[tag=!msg2,distance=..10] at @s run function adri:ac/msg2
execute positioned -37 52 -884 as @a[tag=!msg3,distance=..10] at @s run function adri:ac/msg3
execute positioned 117 120 -1244 as @a[tag=!msg4,distance=..10] at @s run function adri:ac/msg4
execute positioned -106 78 -1476 as @a[tag=!msg5,distance=..10] at @s run function adri:ac/msg5
execute positioned 110 121 -1484 as @a[tag=!msg6,distance=..10] at @s run function adri:ac/msg6
execute positioned 280 74 -1339 as @a[tag=!msg7,distance=..10] at @s run function adri:ac/msg7
execute positioned 819 116 -879 as @a[tag=!msg8,distance=..5] at @s run function adri:ac/msg8
execute positioned 862 147 -977 as @a[tag=!msg9,distance=..5] at @s run function adri:ac/msg9
execute positioned 997 94 -865 as @a[tag=!msg10,distance=..10] at @s run function adri:ac/msg10
execute positioned 853 21 -766 as @a[tag=!msg11,distance=..10] at @s run function adri:ac/msg11
execute positioned 888 129 -244 as @a[tag=!msg12,distance=..10] at @s run function adri:ac/msg12
execute positioned 1776 87 1285 as @a[tag=!msg13,distance=..10] at @s run function adri:ac/msg13
execute positioned 835 95 -109 as @a[tag=!msg14,distance=..10] at @s run function adri:ac/msg14
execute positioned 3209 72 -109 as @a[tag=!msg15,distance=..10] at @s run function adri:ac/msg15
execute positioned 3209 60 -333 as @a[tag=!msg16,distance=..10] at @s run function adri:ac/msg16
execute positioned 3348 71 -109 as @a[tag=!msg17,distance=..10] at @s run function adri:ac/msg17
execute positioned 2873 81 -140 as @a[tag=!msg18,distance=..10] at @s run function adri:ac/msg18
#}

#{ Gunter
execute as @a[x=240,y=120,z=-1348,dx=30,dy=-50,dz=30] run effect give @s jump_boost 1 4 true
#}

#{ Chiptp
effect give @a[x=1090,y=84,z=-41,dx=-18,dy=30,dz=55] blindness 2 1 true
effect give @a[x=1790,y=58,z=1260,dx=-16,dy=20,dz=47] blindness 2 1 true
execute positioned 1086 99 -6 as @a[distance=..4] at @s run tp @s ~700.0 ~-26.0 ~1295.0
execute positioned 1786 73 1286 as @a[distance=..4] at @s run tp @s ~-700.0 ~26.0 ~-1295.0
#}

#{ I4
#execute positioned 941 44 355 as @a[distance=..5] at @s run effect give @s blindness 2 1 true
#execute positioned 941 44 355 as @a[x=967,y=0,z=377,dx=-50,dy=40,dz=-50] run tp @s 3209 206 -109
execute positioned 3209 71 -109 as @a[distance=..85] run effect give @s slow_falling 1 0 true
execute positioned 3209 71 -109 as @a[distance=..85] run effect give @s jump_boost 1 3 true
#}

#{ Misc
#TODO 0,0,0 shulker box
execute positioned 0 0 0 as @a[distance=..5] run tp @s 36 150 257
#deathplanes
tag @a[tag=vr.cfg] remove vr.cfg
execute positioned 3612 18 -109 as @a[distance=..260] run tag @s add vr.cfg
tag @a[tag=vr.int] remove vr.int
execute as @a[gamemode=survival,x=0,y=0,z=-1470,dx=230,dy=100,dz=250] run tag @s add vr.int
execute as @a[gamemode=survival,x=220,y=0,z=-1160,dx=110,dy=100,dz=260] run tag @s add vr.int
execute as 6164a8c8-7b2e-472c-8e9a-97b083bb3a23 run function adri:s/scrub
execute as 04b0fbb3-9916-4297-a525-8bfa26bd812b run function adri:s/scrub
execute as 06ee5b82-8635-495e-a2ef-66541f7719b3 run function adri:s/scrub
#portal ban
execute as @a at @s if block ~ ~ ~ nether_portal run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace nether_portal
#black glazed
execute if block 2587 207 -136 jukebox[has_record=true]{RecordItem:{id:"minecraft:music_disc_11",Count:1b}} unless block 2587 208 -138 minecraft:redstone_torch run function adri:bg/trigger
#making eye enticing
particle minecraft:dragon_breath 494 53 -864 5 5 5 0 1 normal
particle minecraft:portal 494 53 -864 .2 7 .2 0 10 force
particle minecraft:portal 494 53 -864 .05 5 .05 0 20 force
#}

#{ Monument
execute positioned -80 36 -970 if entity @a[distance=..30] run function adri:monu/tick
execute at @a if block ~ ~-1 ~ bedrock as @e[tag=monutp,distance=..0.5] run function adri:monu/tp
#}

#{ Shields Bad
execute as @a[nbt={Inventory:[{id:"minecraft:shield"}]}] at @s run function adri:shieldsbad/sb
#}