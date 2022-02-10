tag @e[tag=!bobj,tag=obj13] add obj
tag @e[tag=objt13] add objt
setblock -66 46 -970 minecraft:jukebox
summon minecraft:item_frame -65.50 46.50 -970.03 {Facing: 2b, ItemRotation: 0b, Invulnerable: 1b, PortalCooldown: 0, Item: {id: "minecraft:music_disc_pigstep", Count: 1b}, FallDistance: 0.0f, WorldUUIDMost: -1614694112681571324L, TileY: 46, Invisible: 1b, Spigot.ticksLived: 15867, TileX: -66, TileZ: -971, Fixed: 1b, Motion: [0.0d, 0.0d, 0.0d], Bukkit.updateLevel: 2, Paper.SpawnReason: "DEFAULT", OnGround: 0b, Air: 300s, Rotation: [180.0f, 0.0f], ItemDropChance: 1.0f, Fire: -1s, WorldUUIDLeast: -5901992132082052474L, Paper.Origin: [-65.5d, 46.5d, -970.03125d]}
summon minecraft:item_frame -66.03 46.50 -969.50 {Facing: 4b, ItemRotation: 0b, Invulnerable: 1b, PortalCooldown: 0, Item: {id: "minecraft:music_disc_pigstep", Count: 1b}, FallDistance: 0.0f, WorldUUIDMost: -1614694112681571324L, TileY: 46, Invisible: 1b, Spigot.ticksLived: 16008, TileX: -67, TileZ: -970, Fixed: 1b, Motion: [0.0d, 0.0d, 0.0d], Bukkit.updateLevel: 2, Paper.SpawnReason: "DEFAULT", OnGround: 0b, Air: 300s, Rotation: [90.0f, 0.0f], ItemDropChance: 1.0f, Fire: -1s, WorldUUIDLeast: -5901992132082052474L, Paper.Origin: [-66.03125d, 46.5d, -969.5d]}
summon minecraft:item_frame -65.50 46.50 -968.97 {Facing: 3b, ItemRotation: 0b, Invulnerable: 1b, PortalCooldown: 0, Item: {id: "minecraft:music_disc_pigstep", Count: 1b}, FallDistance: 0.0f, WorldUUIDMost: -1614694112681571324L, TileY: 46, Invisible: 1b, Spigot.ticksLived: 16121, TileX: -66, TileZ: -969, Fixed: 1b, Motion: [0.0d, 0.0d, 0.0d], Bukkit.updateLevel: 2, Paper.SpawnReason: "DEFAULT", OnGround: 0b, Air: 300s, Rotation: [0.0f, 0.0f], ItemDropChance: 1.0f, Fire: -1s, WorldUUIDLeast: -5901992132082052474L, Paper.Origin: [-65.5d, 46.5d, -968.96875d]}
particle flame -66 46 -970 .7 .7 .7 1 50 force
playsound minecraft:block.enchantment_table.use master @a -66 46 -970 1 .8 1
playsound minecraft:entity.wither.break_block master @a -66 46 -970 .2 .2 .2
playsound minecraft:entity.blaze.shoot master @a -66 46 -970 1 .1 1
clone -103 10 -975 -103 10 -975 -65 47 -970

tag @a add can_spawn_final_bridge
tag @a add found_end

summon shulker -66 45 -970 {Silent:1b,Invulnerable:1b,Glowing:0b,UUID:[I;5001,0,0,0],Team:"obj13",PersistenceRequired:1b,NoAI:1b,AttachFace:1b,Tags:["mgs"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:19999980}]}
tp 00001389-0000-0000-0000-000000000000 -66 46 -970
