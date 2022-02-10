execute as @p at @s run playsound minecraft:item.trident.return master @p ~ ~ ~ .5 .3 .5
execute as @p at @s run playsound minecraft:entity.enderman.teleport master @p ~ ~ ~ .8 1.3 .8

execute as @s[tag=tpm,tag=!unlocked,tag=u3] run function adri:monu/unlocktp/tp3
execute as @s[tag=tpm,tag=!unlocked,tag=u4] run function adri:monu/unlocktp/tp4
execute as @s[tag=tpm,tag=!unlocked,tag=u5] run function adri:monu/unlocktp/tp5
execute as @s[tag=tpm,tag=!unlocked,tag=u6] run function adri:monu/unlocktp/tp6
execute as @s[tag=tpm,tag=!unlocked,tag=u7] run function adri:monu/unlocktp/tp7
execute as @s[tag=tpm,tag=!unlocked,tag=u8] run function adri:monu/unlocktp/tp8
execute as @s[tag=tpm,tag=!unlocked,tag=u9] run function adri:monu/unlocktp/tp9
execute as @s[tag=tpm,tag=!unlocked,tag=u10] run function adri:monu/unlocktp/tp10
execute as @s[tag=tpm,tag=!unlocked,tag=u11] run function adri:monu/unlocktp/tp11
execute as @s[tag=tpm,tag=!unlocked,tag=u12] run function adri:monu/unlocktp/tp12
execute as @s[tag=tpm,tag=!unlocked,tag=u13] run function adri:monu/unlocktp/tp13
execute as @s[tag=tpm,tag=!unlocked,tag=ui1] run function adri:monu/unlocktp/tpi1
execute as @s[tag=tpm,tag=!unlocked,tag=ui2] run function adri:monu/unlocktp/tpi2
execute as @s[tag=tpm,tag=!unlocked,tag=ui3] run function adri:monu/unlocktp/tpi3
execute as @s[tag=tpm,tag=!unlocked,tag=ui4] run function adri:monu/unlocktp/tpi4

execute if entity @s[tag=tp2] run tp @p -112 129 -301 -90 0
execute if entity @s[tag=tp3] run tp @p -125 51 -1475.0 90 0
execute if entity @s[tag=tp4] run tp @p 59 129 -1798 -90 0
execute if entity @s[tag=tp5] run tp @p 682 91 -1232 180 0
execute if entity @s[tag=tp6] run tp @p 857 130 -1154 180 0
execute if entity @s[tag=tp7] run tp @p 1202 130 -777 0 0
execute if entity @s[tag=tp8] run tp @p 937 24 -519 -90 0
execute if entity @s[tag=tp9] run tp @p 1909 90 1125.0 -90 0
execute if entity @s[tag=tp10] run tp @p 787 78 330 -90 0
execute if entity @s[tag=tp11] run tp @p 3209 130 -428 180 0
execute if entity @s[tag=tp12] run tp @p 3763 59 -131 90 0
execute if entity @s[tag=tp13] run tp @p 2507 178 -98 180 0
execute if entity @s[tag=tpi1] run tp @p 116 116 -1335 0 0
execute if entity @s[tag=tpi2] run tp @p 847 137 -909 0 0
execute if entity @s[tag=tpi3] run tp @p 930 93 -113 180 0
execute if entity @s[tag=tpi4] run tp @p 3209 67 -107 0 0

execute if entity @s[tag=tpm] run tp @p -99 53 -970 -90 0
