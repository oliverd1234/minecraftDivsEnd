summon firework_rocket -248 56 -1483 {LifeTime:10,Motion:[-1.0,0.0,0.3],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Colors:[I;2039583]}]}}}}

summon lightning_bolt -248 56 -1483

tellraw @a {"text":"The barrier becomes more stable. Even the multiverse understands the cycle of death, as nothing can be born without sacrifice.","color":"#1F1F1F","italic":false}

summon bat -277 58 -1475.0 {Silent:1b,Invulnerable:1b,Health:1000f,Tags:["barrier_spirit","death_spirit"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:20000000}],Attributes:[{Name:generic.max_health,Base:1000}]}

kill @s

execute as @a at @s run playsound minecraft:ambient.cave master @a ~ ~ ~ 1 0.5

schedule function de_pear:browneye/break_barrier 4s