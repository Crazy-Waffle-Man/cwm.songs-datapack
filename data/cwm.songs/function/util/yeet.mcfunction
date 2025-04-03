execute store result score @s x1 run data get entity @s Pos[0] 10000
execute store result score @s y1 run data get entity @s Pos[1] 10000
execute store result score @s z1 run data get entity @s Pos[2] 10000
tp @s ^ ^ ^0.01
execute store result score @s x2 run data get entity @s Pos[0] 10000
execute store result score @s y2 run data get entity @s Pos[1] 10000
execute store result score @s z2 run data get entity @s Pos[2] 10000
scoreboard players operation @s x2 -= @s x1
scoreboard players operation @s y2 -= @s y1
scoreboard players operation @s z2 -= @s z1
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s x2
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s y2
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s z2
tag @s remove cwm.yeet