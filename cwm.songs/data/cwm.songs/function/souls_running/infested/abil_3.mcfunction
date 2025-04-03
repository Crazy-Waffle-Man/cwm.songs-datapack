execute as @e[type=silverfish,distance=0..30] at @s run summon marker ~ ~ ~ {Tags:[cwm.homing],Particle:"trial_omen"}
execute as @e[type=marker,distance=0..30,tag=cwm.homing] run data modify entity @s Owner set from entity @p UUID
kill @e[type=silverfish,distance=0..30]
scoreboard players set @s CD3 1200