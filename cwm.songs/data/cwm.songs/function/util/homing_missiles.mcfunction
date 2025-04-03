#Homing missiles must be initialized with the tag cwm.homing and the UUID of the owner in the nbt path Owner
#travel toward the nearest non-owner, non-homing entity
execute store result score @s cwm.uuid_0 run data get entity @s Owner[0]
execute store result score @s cwm.uuid_1 run data get entity @s Owner[1]
execute store result score @s cwm.uuid_2 run data get entity @s Owner[2]
execute store result score @s cwm.uuid_3 run data get entity @s Owner[3]
execute unless score @s cwm.uuid_0 = @e[tag=!cwm.homing,limit=1,sort=nearest,tag=!cwm.infested] cwm.uuid_0 at @s rotated as @s run tp @s ~ ~ ~ facing entity @e[tag=!cwm.homing,limit=1,sort=nearest,tag=!cwm.infested]
execute unless score @s cwm.uuid_1 = @e[tag=!cwm.homing,limit=1,sort=nearest,tag=!cwm.infested] cwm.uuid_1 at @s rotated as @s run tp @s ~ ~ ~ facing entity @e[tag=!cwm.homing,limit=1,sort=nearest,tag=!cwm.infested]
execute unless score @s cwm.uuid_2 = @e[tag=!cwm.homing,limit=1,sort=nearest,tag=!cwm.infested] cwm.uuid_2 at @s rotated as @s run tp @s ~ ~ ~ facing entity @e[tag=!cwm.homing,limit=1,sort=nearest,tag=!cwm.infested]
execute unless score @s cwm.uuid_3 = @e[tag=!cwm.homing,limit=1,sort=nearest,tag=!cwm.infested] cwm.uuid_3 at @s rotated as @s run tp @s ~ ~ ~ facing entity @e[tag=!cwm.homing,limit=1,sort=nearest,tag=!cwm.infested]
tp @s ^ ^ ^0.2
execute unless score @s cwm.uuid_0 = @e[tag=!cwm.homing,limit=1,sort=nearest,tag=!cwm.infested] cwm.uuid_0 at @s rotated as @s run damage @e[tag=!cwm.homing,limit=1,sort=nearest,distance=0..1,tag=!cwm.infested] 1 thrown by @s
execute unless score @s cwm.uuid_1 = @e[tag=!cwm.homing,limit=1,sort=nearest,tag=!cwm.infested] cwm.uuid_1 at @s rotated as @s run damage @e[tag=!cwm.homing,limit=1,sort=nearest,distance=0..1,tag=!cwm.infested] 1 thrown by @s
execute unless score @s cwm.uuid_2 = @e[tag=!cwm.homing,limit=1,sort=nearest,tag=!cwm.infested] cwm.uuid_2 at @s rotated as @s run damage @e[tag=!cwm.homing,limit=1,sort=nearest,distance=0..1,tag=!cwm.infested] 1 thrown by @s
execute unless score @s cwm.uuid_3 = @e[tag=!cwm.homing,limit=1,sort=nearest,tag=!cwm.infested] cwm.uuid_3 at @s rotated as @s run damage @e[tag=!cwm.homing,limit=1,sort=nearest,distance=0..1,tag=!cwm.infested] 1 thrown by @s
#Particles
particle trial_omen ~ ~ ~ 0 0 0 0 1 force

execute unless score @s cwm.uuid_0 = @e[tag=!cwm.homing,distance=0..1,sort=nearest,limit=1,tag=!cwm.infested] cwm.uuid_0 if entity @e[tag=!cwm.homing,distance=0..1,sort=nearest] run playsound entity.firework_rocket.blast master @a ~ ~ ~ 1 2 1 
execute unless score @s cwm.uuid_1 = @e[tag=!cwm.homing,distance=0..1,sort=nearest,limit=1,tag=!cwm.infested] cwm.uuid_1 if entity @e[tag=!cwm.homing,distance=0..1,sort=nearest] run playsound entity.firework_rocket.blast master @a ~ ~ ~ 1 2 1 
execute unless score @s cwm.uuid_2 = @e[tag=!cwm.homing,distance=0..1,sort=nearest,limit=1,tag=!cwm.infested] cwm.uuid_2 if entity @e[tag=!cwm.homing,distance=0..1,sort=nearest] run playsound entity.firework_rocket.blast master @a ~ ~ ~ 1 2 1 
execute unless score @s cwm.uuid_3 = @e[tag=!cwm.homing,distance=0..1,sort=nearest,limit=1,tag=!cwm.infested] cwm.uuid_3 if entity @e[tag=!cwm.homing,distance=0..1,sort=nearest] run playsound entity.firework_rocket.blast master @a ~ ~ ~ 1 2 1 
execute unless score @s cwm.uuid_0 = @e[tag=!cwm.homing,distance=0..1,sort=nearest,limit=1,tag=!cwm.infested] cwm.uuid_0 if entity @e[tag=!cwm.homing,distance=0..1,sort=nearest] run kill @s
execute unless score @s cwm.uuid_1 = @e[tag=!cwm.homing,distance=0..1,sort=nearest,limit=1,tag=!cwm.infested] cwm.uuid_1 if entity @e[tag=!cwm.homing,distance=0..1,sort=nearest] run kill @s
execute unless score @s cwm.uuid_2 = @e[tag=!cwm.homing,distance=0..1,sort=nearest,limit=1,tag=!cwm.infested] cwm.uuid_2 if entity @e[tag=!cwm.homing,distance=0..1,sort=nearest] run kill @s
execute unless score @s cwm.uuid_3 = @e[tag=!cwm.homing,distance=0..1,sort=nearest,limit=1,tag=!cwm.infested] cwm.uuid_3 if entity @e[tag=!cwm.homing,distance=0..1,sort=nearest] run kill @s