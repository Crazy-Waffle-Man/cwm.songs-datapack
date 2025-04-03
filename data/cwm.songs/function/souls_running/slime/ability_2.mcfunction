effect give @e[tag=!cwm.slime_core,distance=0..5] minecraft:slowness 5 255 true
execute as @e[tag=!cwm.slime_core,distance=0..5] run damage @s 2 minecraft:cramming by @e[tag=cwm.slime_core,limit=1,sort=nearest]
particle minecraft:sneeze ~ ~ ~ 5 5 5 0 10000 force
playsound minecraft:entity.panda.sneeze master @a ~ ~ ~ 0 0.1 1
scoreboard players set @s CD2 600
playsound minecraft:item.bucket.empty_tadpole master @a ~ ~ ~