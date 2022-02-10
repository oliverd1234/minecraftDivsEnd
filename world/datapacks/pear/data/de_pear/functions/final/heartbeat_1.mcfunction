playsound minecraft:block.note_block.basedrum master @a[predicate=de_pear:areas/final_monster,predicate=!de_pear:areas/final_monster_heart] 2808 178 -114 8 0.75

playsound minecraft:block.conduit.ambient ambient @a[predicate=de_pear:areas/final_monster,predicate=!de_pear:areas/final_monster_heart] 2808 178 -114 6 0.5

execute if entity @a[predicate=de_pear:areas/final_monster,predicate=!de_pear:areas/final_monster_heart] run setblock 2812 173 -116 minecraft:soul_wall_torch replace
execute if entity @a[predicate=de_pear:areas/final_monster,predicate=!de_pear:areas/final_monster_heart] run setblock 2809 174 -116 minecraft:soul_wall_torch replace
execute if entity @a[predicate=de_pear:areas/final_monster,predicate=!de_pear:areas/final_monster_heart] run setblock 2808 183 -112 minecraft:soul_wall_torch replace
execute if entity @a[predicate=de_pear:areas/final_monster,predicate=!de_pear:areas/final_monster_heart] run setblock 2804 186 -120 minecraft:soul_wall_torch replace
execute if entity @a[predicate=de_pear:areas/final_monster,predicate=!de_pear:areas/final_monster_heart] run setblock 2846 181 -114 minecraft:soul_wall_torch replace
execute if entity @a[predicate=de_pear:areas/final_monster,predicate=!de_pear:areas/final_monster_heart] run setblock 2836 178 -124 minecraft:soul_wall_torch[facing=east] replace

schedule function de_pear:final/heartbeat_2 11t
schedule function de_pear:final/heartbeat_remove_light 2t