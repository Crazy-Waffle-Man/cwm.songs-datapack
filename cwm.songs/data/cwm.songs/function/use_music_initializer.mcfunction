playsound music_disc.creator_music_box master @a ~ ~ ~ 10 1 1
execute at @s run particle note ~ ~1 ~ 1 1 1 1 1000 force
advancement grant @a until cwm.songs:songs/use_music_init
clear @a carrot_on_a_stick[item_model="minecraft:structure_void"]
data modify storage cwm.songs:music_initialized_bool Bool set value 1b
execute as @a run attribute @s minecraft:movement_speed base set 0
execute as @a run attribute @s minecraft:jump_strength base set 0
schedule function cwm.songs:music_init_titles/1 54.54500t
title @a times 0t 272.5t 5t
effect give @a resistance 42 255 true