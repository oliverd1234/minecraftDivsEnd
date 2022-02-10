playsound minecraft:item.bucket.empty master @a[tag=!water_shrine_1] ~ ~ ~ 2 0.5
playsound minecraft:block.beacon.power_select master @a[tag=!water_shrine_1] ~ ~ ~ 1 0.5
tellraw @a[tag=!water_shrine_2,tag=!water_shrine_1] {"text":"One of the water shrines has been activated. With the other, the heat of the Court will die down enough to stop evaporating liquids.","color":"#FFB870","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","italic":false}]}}
tellraw @a[tag=water_shrine_2,tag=!water_shrine_1] {"text":"With both shrines activated, you can feel the heat of the Court dying down. Liquids can now be brought into Gorvana's realm.","color":"#FFB870","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","italic":false}]}}

tag @a add water_shrine_1