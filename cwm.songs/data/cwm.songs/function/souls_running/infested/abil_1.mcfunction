effect give @e[distance=0..2.75] infested 30 255 true
effect give @e[distance=0..2.75,team=!cwm.infestation] poison 30 0 true
playsound entity.silverfish.ambient master
particle dust{color:9408399,scale: 4} ~ ~ ~ 0.1 0.1 0.1 1 50 force
scoreboard players set @s CD1 60