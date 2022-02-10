#Effects for global custom mob effects that run every tick.
execute as @e[type=#cartographer_core:hostile] at @s run function de_pear:mobs/passive

execute as @e[type=#cartographer_core:hostile,nbt={HurtTime:9s,ActiveEffects:[{Id:11b,Amplifier:4b}]}] at @s run function de_pear:mobs/invulnerable

#Effects for global custom items that must run every tick.
execute as @a run function de_pear:items/calc_effects

execute as @a[scores={de_pear_dt=..2}] run scoreboard players set @a ragefire_time 0
execute as @a[scores={de_pear_dt=..2}] run attribute @s minecraft:generic.attack_damage modifier remove 1801-0705-0609-1805-0
execute as @a[scores={de_pear_dt=..2}] run attribute @s minecraft:generic.attack_speed modifier remove 1801-0705-0609-1805-0

execute as @a run execute store result score @s de_pear_fire run data get entity @s Fire

execute as @a[tag=ashburst,scores={de_pear_kill=1..}] at @s run function de_pear:items/ashburst
execute as @a[tag=scorchwind,scores={de_pear_kill=1..}] at @s run function de_pear:items/scorchwind

execute as @a[tag=damocles,scores={de_pear_attack=1..}] at @s run function de_pear:items/damocles

execute as @a[tag=icewind] at @s run function de_pear:items/icewind
execute as @a[tag=phoenix] at @s run function de_pear:items/phoenix
execute as @a[tag=phoenix,scores={de_pear_hurt=1..}] at @s run execute if entity @e[type=#cartographer_core:hostile,distance=..3] run function de_pear:items/phoenix_wind

execute as @a[tag=bug_report] at @s run function de_pear:items/bug_report

execute as @a[tag=godspeed] at @s run function de_pear:items/godspeed

execute as @a[tag=electro_force,scores={de_pear_attack=1..}] at @s run execute as @e[type=#cartographer_core:hostile,limit=1,sort=nearest,distance=..5,nbt=!{HurtTime:0s}] at @s run function de_pear:items/electro_force

execute as @a[tag=ragefire,scores={de_pear_fire=1..}] at @s run function de_pear:items/ragefire

execute as @a[tag=chromatic,scores={de_pear_bow=1..}] at @s run function de_pear:items/chromatican

execute as @a[tag=promethean,scores={de_pear_cbow=1..}] at @s run function de_pear:items/promethean

execute as @a[tag=daredevil,scores={de_pear_attack=1..}] at @s run function de_pear:items/daredevil_melee
execute as @a[tag=daredevil,scores={de_pear_cbow=1..}] at @s run function de_pear:items/daredevil_ranged
execute as @a[tag=daredevil,scores={de_pear_kill=1..,de_pear_attack=0}] at @s run function de_pear:items/daredevil_kill

execute as @e[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:40b}]}] at @s run function de_pear:items/daredevil_ranged_effect

execute as @a[tag=daredevil,scores={de_pear_style=6..}] at @s run function de_pear:items/daredevil_transform_thrillseeker

execute as @a[tag=thrillseeker,nbt={SelectedItem:{tag:{Charged:0b,Ammo:0}}}] at @s run function de_pear:items/thrillseeker_transform_daredevil


execute as @a[tag=betrothed,scores={de_pear_attack=1..}] at @s run function de_pear:items/betrothed_melee
execute as @a[tag=betrothed,scores={de_pear_cbow=1..}] at @s run function de_pear:items/betrothed_ranged
execute as @a[tag=betrothed,scores={de_pear_kill=1..,de_pear_attack=0}] at @s run function de_pear:items/betrothed_kill

execute as @e[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:41b}]}] at @s run function de_pear:items/betrothed_ranged_effect

execute as @a[tag=betrothed,scores={de_pear_style=6..}] at @s run function de_pear:items/betrothed_transform_suitor

execute as @a[tag=old_flame,nbt={SelectedItem:{tag:{Charged:0b,Ammo:0}}}] at @s run function de_pear:items/suitor_transform_betrothed

execute as @a[tag=dying_light,scores={de_pear_attack=1..}] at @s run execute as @e[type=#cartographer_core:hostile,limit=1,sort=nearest,distance=..5,nbt=!{HurtTime:0s}] at @s run function de_pear:items/dying_light
execute as @a[tag=dying_light,scores={de_pear_kill=1..}] at @s run execute positioned ^ ^ ^3 run function de_pear:items/dying_light_kill

execute as @a[tag=persuasion,scores={de_pear_attack=1..}] at @s run function de_pear:items/persuasion

execute as @a[tag=past_feast] at @s run function de_pear:items/feast_of_the_past

execute as @a[tag=plane_warp,scores={de_pear_jump=1..,de_pear_sprint_t=1..}] at @s run function de_pear:items/plane_warp

execute as @a[tag=blightfuel,tag=!blightfuel_on,nbt={ActiveEffects:[{Id:19b}]}] at @s run function de_pear:items/blightfuel_enable
execute as @a[tag=blightfuel,tag=blightfuel_on,nbt=!{ActiveEffects:[{Id:19b}]}] at @s run function de_pear:items/blightfuel_disable
execute as @a[tag=!blightfuel,tag=blightfuel_on] at @s run function de_pear:items/blightfuel_disable

execute as @a[tag=beast_tamer,tag=!wolf_on] at @s run function de_pear:items/beast_tamer_enable
execute as @a[tag=!beast_tamer,tag=wolf_on] at @s run function de_pear:items/beast_tamer_disable

execute as @a[tag=ashburst] run tag @s remove ashburst
execute as @a[tag=scorchwind] run tag @s remove scorchwind
execute as @a[tag=icewind] run tag @s remove icewind
execute as @a[tag=damocles] run tag @s remove damocles
execute as @a[tag=phoenix] run tag @s remove phoenix
execute as @a[tag=promethean] run tag @s remove promethean
execute as @a[tag=bug_report] run tag @s remove bug_report
execute as @a[tag=ragefire] run tag @s remove ragefire
execute as @a[tag=chromatic] run tag @s remove chromatic
execute as @a[tag=sparkle] run tag @s remove sparkle
execute as @a[tag=daredevil] run tag @s remove daredevil
execute as @a[tag=thrillseeker] run tag @s remove thrillseeker
execute as @a[tag=electro_force] run tag @s remove electro_force
execute as @a[tag=dying_light] run tag @s remove dying_light
execute as @a[tag=persuasion] run tag @s remove persuasion
execute as @a[tag=past_feast] run tag @s remove past_feast
execute as @a[tag=hivemind] run tag @s remove hivemind
execute as @a[tag=plane_warp] run tag @s remove plane_warp
execute as @a[tag=betrothed] run tag @s remove betrothed
execute as @a[tag=old_flame] run tag @s remove old_flame
execute as @a[tag=blightfuel] run tag @s remove blightfuel
execute as @a[tag=beast_tamer] run tag @s remove beast_tamer

scoreboard players set @a de_pear_hurt 0
scoreboard players set @a de_pear_kill 0
scoreboard players set @a[scores={de_pear_sprint_t=1..,de_pear_sprint=0}] de_pear_sprint_t 0
scoreboard players set @a[scores={de_pear_sprint=1..}] de_pear_sprint 0
scoreboard players set @a de_pear_bow 0
scoreboard players set @a de_pear_cbow 0
scoreboard players set @a de_pear_attack 0
scoreboard players set @a de_pear_jump 0

scoreboard players set @a de_bread 0
scoreboard players set @a de_m_soup 0
scoreboard players set @a de_apple 0
scoreboard players set @a de_g_apple 0
scoreboard players set @a de_eg_apple 0
scoreboard players set @a de_fish 0
scoreboard players set @a de_c_fish 0 
scoreboard players set @a de_salmon 0
scoreboard players set @a de_c_salmon 0
scoreboard players set @a de_kelp 0
scoreboard players set @a de_pork 0
scoreboard players set @a de_c_pork 0
scoreboard players set @a de_beef 0
scoreboard players set @a de_c_beef 0
scoreboard players set @a de_chicken 0
scoreboard players set @a de_c_chicken 0
scoreboard players set @a de_mutton 0
scoreboard players set @a de_c_mutton 0
scoreboard players set @a de_rabbit 0
scoreboard players set @a de_c_rabbit 0
scoreboard players set @a de_cookie 0
scoreboard players set @a de_melon 0
scoreboard players set @a de_pie 0
scoreboard players set @a de_carrot 0
scoreboard players set @a de_g_carrot 0
scoreboard players set @a de_p_potato 0
scoreboard players set @a de_potato 0
scoreboard players set @a de_c_potato 0
scoreboard players set @a de_chorus 0
scoreboard players set @a de_beet 0
scoreboard players set @a de_b_soup 0
scoreboard players set @a de_r_soup 0
scoreboard players set @a de_honey 0
scoreboard players set @a de_m_stew 0

scoreboard players set @a[tag=!godspeed] godspeed_value 0

execute as @a[tag=!godspeed] run attribute @s minecraft:generic.attack_damage modifier remove 7-15-4-19-16

execute as @e[type=#cartographer_core:hostile,nbt={ActiveEffects:[{Id:9b,Amplifier:30b}]}] at @s run function de_pear:items/chromatican_effect

execute as @e[type=arrow,tag=promethean_arrow,nbt={inGround:1b}] at @s run function de_pear:items/promethean_effect

execute as @e[type=area_effect_cloud,tag=promethean_fire] at @s run function de_pear:items/promethean_fire

tag @a remove godspeed

execute if entity @a[nbt={ActiveEffects:[{Id:9b,Amplifier:100b}]}] run execute as @a[nbt={ActiveEffects:[{Id:9b,Amplifier:100b}]}] at @s run function de_pear:items/antidote

#Save Void Tridents
execute as @e[type=trident,tag=!saved] at @s run execute positioned ~ -15 ~ run execute if entity @s[distance=..10] run function de_pear:items/save_trident

#Monument Mechanics, must run every tick. Fixes mob aggro.
execute as @e[type=#cartographer_core:hostile,type=!shulker,tag=!affinity_fixed] at @s run function de_pear:monument/fix_affinity


#Browneye's Mechs, Barrier Repel and particles only. This has to run on a tick to delete enderpearls.
execute as @e[tag=barrier_marker] at @s run function de_pear:browneye/barrier_repel
execute as @e[tag=barrier_spirit_holder] at @s run function de_pear:browneye/barrier_spirits
execute as @e[type=bat,tag=barrier_spirit] at @s run function de_pear:loop/tick/suso/barrier_spirit

#Pear Mechanics that must work every tick
execute as @a[predicate=de_pear:areas/oracles_rift] at @s if block ~ ~ ~ water run effect give @s slow_falling 6 0
execute as @a[predicate=de_pear:areas/oracles_rift] at @s run particle minecraft:warped_spore ~ ~1 ~ 2 2 2 0.01 2 normal
execute as @e[type=phantom,tag=scripted_bloodbat] at @s run tp @s ^ ^ ^0.75

#Render Mechanics that must work every tick
#Moved over to suso_de
execute if entity @a[tag=rwall_player] as @e[tag=render_flask,type=armor_stand] at @s run function de_pear:loop/tick/suso/render_flask

#Void hole Court of Ash tp to I4
execute as @a[x=967,y=0,z=377,dx=-50,dy=40,dz=-50] run function de_pear:void/trigger_interaction/warp_to_i4
execute if entity @a[tag=void_interact_warp] if entity @a[tag=!void_interact_warp] positioned 1057 213 352 as @a[distance=..3] at @s run function de_pear:void/interaction_warp_4_failsafe

#Final Mechanics that must work every tick
execute positioned 2804 198 -114 as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..50] at @s run function de_pear:final/spawn_defiled_items

#Recall the loop
schedule function de_pear:loop/tick/base 1t