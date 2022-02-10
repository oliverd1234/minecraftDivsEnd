tag @a remove completed_mellohi
tag @a remove vent_alpha
tag @a remove vent_beta
tag @a remove vent_gamma
tag @a remove vent_delta
tag @a remove vent_epsilon
tag @a remove all_vents

tag @a remove alchemist_1
tag @a remove alchemist_2
tag @a remove alchemist_3

tag @a remove bloodbat_event

kill @e[type=villager,tag=alchemist_ghost]

setblock 1023 92 -690 redstone_lamp[lit=false] replace
setblock 1024 92 -688 redstone_lamp[lit=false] replace
setblock 1024 92 -684 redstone_lamp[lit=false] replace
setblock 1024 92 -686 redstone_lamp[lit=false] replace
setblock 1023 92 -682 redstone_lamp[lit=false] replace

kill @e[tag=enigma_keyslot,type=item_frame]

summon item_frame 1013 85 -688 {Facing:1b,ItemRotation:4b,Invulnerable:1b,Tags:["enigma_keyslot"],Item:{}}

fill 1010 84 -687 1010 87 -689 barrier replace
setblock 1023 85 -685 air replace