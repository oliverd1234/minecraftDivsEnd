
execute as @a[scores={ragefire_time=2}] run attribute @s minecraft:generic.attack_damage modifier remove 1801-0705-0609-1805-0
execute as @a[scores={ragefire_time=2}] run attribute @s minecraft:generic.attack_speed modifier remove 1801-0705-0609-1805-0

execute as @a[scores={ragefire_time=2}] at @s run summon area_effect_cloud ~ ~1 ~ {Particle:"ash",ReapplicationDelay:20,Radius:0.75f,RadiusPerTick:0.25f,Duration:20,DurationOnUse:-10f,WaitTime:0,Potion:"minecraft:harming",CustomName:'{"text":"their own rage"}'}
execute as @a[scores={ragefire_time=2}] at @s run playsound minecraft:entity.blaze.death player @a[distance=..8] ~ ~ ~ 1 1.5
execute as @a[scores={ragefire_time=2}] at @s run particle minecraft:lava ~ ~2.3 ~ 0.5 0 0.5 0.05 10 normal

scoreboard players remove @a[scores={ragefire_time=1..}] ragefire_time 1
execute as @a[scores={ragefire_time=2..}] at @s run particle minecraft:flame ~ ~0.3 ~ 0.5 0 0.5 0.05 15 normal
execute as @a[scores={ragefire_time=2..}] at @s run particle minecraft:dust 0.5 0 0 1 ~ ~1 ~ 2 1 2 1 50 normal


scoreboard players remove @e[type=#cartographer_core:hostile,scores={damocles_time=1..}] damocles_time 1
execute as @e[type=#cartographer_core:hostile,scores={damocles_time=1..}] at @s run function de_pear:items/peril_effect

#General Mechanic, make spirits show up when players are close to them.

execute as @e[type=villager,tag=npc_spirit,tag=!spirit_visible] at @s if entity @a[distance=..6] run function de_pear:general/spirit_reveal
execute as @e[type=villager,tag=npc_spirit,tag=spirit_visible] at @s unless entity @a[distance=..8] run function de_pear:general/spirit_hide

execute as @a at @s as @e[tag=npc_spirit,distance=..6] at @s run particle minecraft:end_rod ~ ~1 ~ 0.2 0.5 0.2 0.03 8 normal

#Monument Mechanics, make the box for multiplayer show up if more than one player is detected.
execute store result score @a de_player_count run execute if entity @a
execute positioned -59 63 -969 run execute if entity @a[distance=..7,tag=!multiplayer_spawned,scores={de_player_count=2..}] run function de_pear:monument/multiplayer_box

execute positioned -79 63 -970 run tag @a[distance=..7] add can_monu_tp

execute positioned -79 63 -970 run execute if entity @a[tag=can_monu_tp,distance=..7] run particle minecraft:portal -79 62 -970 0 0.5 0 0.1 40 normal
execute positioned -85 45 -970 run execute if entity @a[tag=can_monu_tp,distance=..7] run particle minecraft:portal -85 44 -970 0 0.5 0 0.1 40 normal

execute positioned -79 61 -970 run execute if entity @a[tag=can_monu_tp,tag=monu_warping,distance=..0.5] run playsound minecraft:entity.enderman.teleport player @a[distance=..16] -79 46 -970 2 1.2 
execute positioned -85 43 -970 run execute if entity @a[tag=can_monu_tp,tag=monu_warping_2,distance=..0.5] run playsound minecraft:entity.enderman.teleport player @a[distance=..16] -82 61 -970 2 1.2 

execute positioned -79 61 -970 run execute if entity @a[tag=can_monu_tp,tag=monu_warping,distance=..0.5] run tp @a[tag=monu_warping,distance=..0.5] -79 46 -970
execute positioned -85 43 -970 run execute if entity @a[tag=can_monu_tp,tag=monu_warping_2,distance=..0.5] run tp @a[tag=monu_warping_2,distance=..0.5] -82 61 -970

tag @a remove monu_warping
tag @a remove monu_warping_2

execute positioned -79 61 -970 run execute if entity @a[tag=can_monu_tp,distance=..0.5] run tag @a add monu_warping
execute positioned -85 43 -970 run execute if entity @a[tag=can_monu_tp,distance=..0.5] run tag @a add monu_warping_2


#Villager Narrative Events
execute positioned -53 63 -969 run execute if entity @a[distance=..7,tag=!scribe_event] run function de_pear:general/scribe_1
execute positioned 821 152 -902 run execute if entity @a[distance=..7,tag=!cerulean_event] run function de_pear:general/cerulean_1
execute positioned 934 92 -118 run execute if entity @a[distance=..7,tag=!attendant_event] run function de_pear:general/attendant_1
execute positioned 3180 70 -113 run execute if entity @a[distance=..7,tag=!reality_event] run function de_pear:general/reality_1

#Brown's Mechanics, work on a one second timer, aren't needed on a tick timer.
execute as @e[tag=barrier_key_life] at @s run execute if block ~ ~ ~ white_stained_glass run function de_pear:browneye/place_life
execute as @e[tag=barrier_key_void] at @s run execute if block ~ ~ ~ gray_stained_glass run function de_pear:browneye/place_void
execute as @e[tag=barrier_key_sound] at @s run execute if block ~ ~ ~ light_gray_stained_glass run function de_pear:browneye/place_sound
execute as @e[tag=barrier_key_death] at @s run execute if block ~ ~ ~ black_stained_glass run function de_pear:browneye/place_death

execute as @e[tag=barrier_key_name] at @s run execute if entity @a[distance=..6,gamemode=survival] run function de_pear:browneye/show_names

#Pear Mechanics. These run on a one second timer.
execute as @a[predicate=de_pear:areas/oracles_rift_vapor,gamemode=survival] at @s run function de_pear:pear/vapor_tp
execute as @a[predicate=de_pear:areas/oracles_rift_box,gamemode=survival,scores={de_pear_barrel=1..},tag=!completed_mellohi,limit=1] at @s run function de_pear:pear/disc_shortcut

execute as @e[type=item_frame,tag=enigma_keyslot,nbt={Item:{}},tag=!solved] if entity @s[tag=enigma_keyslot,nbt=!{Item:{tag:{Enigma:1}}}] at @s run function de_pear:pear/enigma_key_reject
execute as @e[type=item_frame,tag=enigma_keyslot,nbt={Item:{}},tag=!solved] if entity @s[tag=enigma_keyslot,nbt={Item:{tag:{Enigma:1}}}] at @s run function de_pear:pear/enigma_key_accept
setblock 1013 84 -688 minecraft:polished_basalt[axis=y] replace

execute if block 1023 85 -685 minecraft:warped_button[powered=true] run execute unless entity @a[tag=vent_alpha] run function de_pear:pear/vent_alpha
execute if block 1281 95 -846 minecraft:warped_button[powered=true] run execute unless entity @a[tag=vent_beta] run function de_pear:pear/vent_beta
execute if block 1086 131 -829 minecraft:warped_button[powered=true] run execute unless entity @a[tag=vent_gamma] run function de_pear:pear/vent_gamma
execute if block 1222 130 -714 minecraft:warped_button[powered=true] run execute unless entity @a[tag=vent_delta] run function de_pear:pear/vent_delta
execute if block 1190 170 -876 minecraft:warped_button[powered=true] run execute unless entity @a[tag=vent_epsilon] run function de_pear:pear/vent_epsilon

execute if entity @a[tag=vent_alpha,tag=vent_beta,tag=vent_gamma,tag=vent_delta,tag=vent_epsilon,tag=!all_vents] run schedule function de_pear:pear/all_vents 5s
execute if entity @a[tag=vent_alpha,tag=vent_beta,tag=vent_gamma,tag=vent_delta,tag=vent_epsilon,tag=!all_vents] run tag @a add all_vents

execute as @a[predicate=de_pear:items/ventilator] run tag @s add ventilator

execute as @a[gamemode=survival,tag=!ventilator,tag=!vent_alpha,predicate=de_pear:areas/oracles_rift_tower_a] at @s run function de_pear:pear/blight_toxin
execute as @a[gamemode=survival,tag=!ventilator,tag=!vent_beta,predicate=de_pear:areas/oracles_rift_tower_b] at @s run function de_pear:pear/blight_toxin
execute as @a[gamemode=survival,tag=!ventilator,tag=!vent_gamma,predicate=de_pear:areas/oracles_rift_tower_g] at @s run function de_pear:pear/blight_toxin
execute as @a[gamemode=survival,tag=!ventilator,tag=!vent_delta,predicate=de_pear:areas/oracles_rift_tower_d] at @s run function de_pear:pear/blight_toxin
execute as @a[gamemode=survival,tag=!ventilator,tag=!vent_epsilon,predicate=de_pear:areas/oracles_rift_tower_e] at @s run function de_pear:pear/blight_toxin

tag @a[tag=ventilator] remove ventilator

execute positioned 1043 83 -843 run execute if entity @a[gamemode=survival,distance=..4,tag=!bloodbat_event] run function de_pear:pear/bloodbat_tnt_event

execute positioned 1031 92 -859 run execute if entity @a[gamemode=survival,distance=..7,tag=!alchemist_1] run function de_pear:pear/alchemist_1
execute positioned 1003 85 -762 run execute if entity @a[gamemode=survival,distance=..7,tag=!alchemist_2] run function de_pear:pear/alchemist_2
execute positioned 1020 84 -690 run execute if entity @a[gamemode=survival,distance=..7,tag=!alchemist_3] run function de_pear:pear/alchemist_3

#Nava Court of Ash mechanics. Run on a one second timer. No tick timer needed.
execute if entity @a[predicate=de_pear:areas/court_of_ash,gamemode=survival,tag=!no_parch] run execute as @a[predicate=de_pear:areas/court_of_ash,gamemode=survival,tag=!no_parch] at @s run function de_pear:nava_court/parch

execute if entity @a[tag=water_shrine_1,tag=water_shrine_2] run tag @a add no_parch

execute as @e[tag=court_monologue_1,tag=!part_1] at @s run execute if entity @a[distance=..8,gamemode=survival] run function de_pear:nava_court/monologue_1_1
execute as @e[tag=court_monologue_2,tag=!part_1] at @s run execute if entity @a[distance=..8,gamemode=survival] run function de_pear:nava_court/monologue_2_1
execute as @e[tag=court_monologue_3] at @s run execute if entity @a[distance=..8,gamemode=survival] run function de_pear:nava_court/monologue_3_1
execute as @e[tag=court_monologue_4,tag=!part_1] at @s run execute if entity @a[distance=..8,gamemode=survival] run function de_pear:nava_court/monologue_4_1

#Void hole dialogue entrance mech etc.
execute positioned 930 72 356 run execute if entity @a[gamemode=survival,distance=..8,tag=!void_hole_uwu] run function de_pear:void/interaction_court

#Final Area mechanics. Run on a one second timer.
execute as @a[predicate=de_pear:areas/final_monster_heart_close,gamemode=survival,scores={de_pear_barrel=1..},tag=!final_pause,limit=1] at @s run function de_pear:final/pause

execute unless entity @a[tag=!defiled] run kill @e[tag=defiled_item]

execute as @e[type=item,tag=defiled_item] at @s run execute if entity @a[distance=..1.5,tag=!defiled] run function de_pear:final/take_defiled_item

execute as @e[type=armor_stand,tag=final_shrine,tag=!nameplate] at @s if entity @a[distance=..6] run function de_pear:final/shrine_reveal
execute as @e[type=armor_stand,tag=final_shrine,tag=nameplate] at @s unless entity @a[distance=..10] run function de_pear:final/shrine_hide

#Final Area Bridge

execute if entity @a[tag=can_spawn_final_bridge] run tag @a add can_spawn_final_bridge
execute if entity @a[tag=bridge_adri] run tag @a add bridge_adri
execute if entity @a[tag=bridge_apollo] run tag @a add bridge_apollo
execute if entity @a[tag=bridge_brown] run tag @a add bridge_brown
execute if entity @a[tag=bridge_nava] run tag @a add bridge_nava
execute if entity @a[tag=bridge_gunter] run tag @a add bridge_gunter
execute if entity @a[tag=bridge_ty] run tag @a add bridge_ty
execute if entity @a[tag=bridge_pear] run tag @a add bridge_pear
execute if entity @a[tag=bridge_blade] run tag @a add bridge_blade
execute if entity @a[tag=bridge_chip] run tag @a add bridge_chip
execute if entity @a[tag=bridge_gorvana] run tag @a add bridge_gorvana
execute if entity @a[tag=bridge_render] run tag @a add bridge_render
execute if entity @a[tag=bridge_cfg] run tag @a add bridge_cfg
execute if entity @a[tag=bridge_final] run tag @a add bridge_final

execute positioned 3181 70 -109 run execute if entity @a[gamemode=survival,distance=..8,tag=can_spawn_final_bridge,tag=!bridge_adri] run function de_pear:final/bridge/adri
execute positioned 3149 70 -109 run execute if entity @a[gamemode=survival,distance=..7,tag=can_spawn_final_bridge,tag=!bridge_apollo] run function de_pear:final/bridge/apollo
execute positioned 3113 72 -116 run execute if entity @a[gamemode=survival,distance=..7,tag=can_spawn_final_bridge,tag=!bridge_brown] run function de_pear:final/bridge/brown
execute positioned 3112 80 -143 run execute if entity @a[gamemode=survival,distance=..7,tag=can_spawn_final_bridge,tag=!bridge_nava] run function de_pear:final/bridge/nava
execute positioned 3101 87 -184 run execute if entity @a[gamemode=survival,distance=..7,tag=can_spawn_final_bridge,tag=!bridge_gunter] run function de_pear:final/bridge/gunter
execute positioned 3078 97 -218 run execute if entity @a[gamemode=survival,distance=..7,tag=can_spawn_final_bridge,tag=!bridge_ty] run function de_pear:final/bridge/ty
execute positioned 3045 100 -215 run execute if entity @a[gamemode=survival,distance=..7,tag=can_spawn_final_bridge,tag=!bridge_pear] run function de_pear:final/bridge/pear
execute positioned 3026 100 -189 run execute if entity @a[gamemode=survival,distance=..7,tag=can_spawn_final_bridge,tag=!bridge_blade] run function de_pear:final/bridge/blade
execute positioned 3015 102 -163 run execute if entity @a[gamemode=survival,distance=..7,tag=can_spawn_final_bridge,tag=!bridge_chip] run function de_pear:final/bridge/chip
execute positioned 3016 100 -133 run execute if entity @a[gamemode=survival,distance=..7,tag=can_spawn_final_bridge,tag=!bridge_gorvana] run function de_pear:final/bridge/gorvana
execute positioned 3004 94 -97 run execute if entity @a[gamemode=survival,distance=..7,tag=can_spawn_final_bridge,tag=!bridge_render] run function de_pear:final/bridge/render
execute positioned 2981 89 -118 run execute if entity @a[gamemode=survival,distance=..7,tag=can_spawn_final_bridge,tag=!bridge_cfg] run function de_pear:final/bridge/cfg
execute positioned 2962 85 -140 run execute if entity @a[gamemode=survival,distance=..6,tag=can_spawn_final_bridge,tag=!bridge_final] run function de_pear:final/bridge/final

execute positioned 3181 73 -109 run execute if entity @a[gamemode=survival,distance=..24,tag=can_spawn_final_bridge,tag=!bridge_adri] run particle minecraft:end_rod ~ ~ ~ 2 2 2 0.05 100 normal
execute positioned 3149 73 -109 run execute if entity @a[gamemode=survival,distance=..24,tag=can_spawn_final_bridge,tag=!bridge_apollo] run particle minecraft:end_rod ~ ~ ~ 2 2 2 0.05 100 normal
execute positioned 3113 75 -116 run execute if entity @a[gamemode=survival,distance=..24,tag=can_spawn_final_bridge,tag=!bridge_brown] run particle minecraft:end_rod ~ ~ ~ 2 2 2 0.05 100 normal
execute positioned 3112 83 -143 run execute if entity @a[gamemode=survival,distance=..24,tag=can_spawn_final_bridge,tag=!bridge_nava] run particle minecraft:end_rod ~ ~ ~ 2 2 2 0.05 100 normal
execute positioned 3101 90 -184 run execute if entity @a[gamemode=survival,distance=..24,tag=can_spawn_final_bridge,tag=!bridge_gunter] run particle minecraft:end_rod ~ ~ ~ 2 2 2 0.05 100 normal
execute positioned 3078 100 -218 run execute if entity @a[gamemode=survival,distance=..24,tag=can_spawn_final_bridge,tag=!bridge_ty] run particle minecraft:end_rod ~ ~ ~ 2 2 2 0.05 100 normal
execute positioned 3045 103 -215 run execute if entity @a[gamemode=survival,distance=..24,tag=can_spawn_final_bridge,tag=!bridge_pear] run particle minecraft:end_rod ~ ~ ~ 2 2 2 0.05 100 normal
execute positioned 3026 103 -189 run execute if entity @a[gamemode=survival,distance=..24,tag=can_spawn_final_bridge,tag=!bridge_blade] run particle minecraft:end_rod ~ ~ ~ 2 2 2 0.05 100 normal
execute positioned 3015 105 -163 run execute if entity @a[gamemode=survival,distance=..24,tag=can_spawn_final_bridge,tag=!bridge_chip] run particle minecraft:end_rod ~ ~ ~ 2 2 2 0.05 100 normal
execute positioned 3016 103 -133 run execute if entity @a[gamemode=survival,distance=..24,tag=can_spawn_final_bridge,tag=!bridge_gorvana] run particle minecraft:end_rod ~ ~ ~ 2 2 2 0.05 100 normal
execute positioned 3004 97 -97 run execute if entity @a[gamemode=survival,distance=..24,tag=can_spawn_final_bridge,tag=!bridge_render] run particle minecraft:end_rod ~ ~ ~ 2 2 2 0.05 100 normal
execute positioned 2981 92 -118 run execute if entity @a[gamemode=survival,distance=..24,tag=can_spawn_final_bridge,tag=!bridge_cfg] run particle minecraft:end_rod ~ ~ ~ 2 2 2 0.05 100 normal
execute positioned 2962 87 -140 run execute if entity @a[gamemode=survival,distance=..24,tag=can_spawn_final_bridge,tag=!bridge_final] run particle minecraft:end_rod ~ ~ ~ 2 2 2 0.05 100 normal

# Ambient Music Triggers
execute positioned 30 80 -852 run execute if entity @a[gamemode=survival,distance=..8,tag=!monument_music] run function de_pear:ambient_music/monument
execute positioned 966 115 -850 run execute if entity @a[gamemode=survival,distance=..8,tag=!oracles_music] run function de_pear:ambient_music/oracles
execute positioned 901 120 -210 run execute if entity @a[gamemode=survival,distance=..8,tag=!garden_music] run function de_pear:ambient_music/garden

#One Second Resets
scoreboard players set @a[scores={de_pear_barrel=1..}] de_pear_barrel 0

execute as @e[type=armor_stand,tag=invulnerable_notice] at @s run function de_pear:mobs/purge_notices

schedule function de_pear:loop/1_second/base 1s