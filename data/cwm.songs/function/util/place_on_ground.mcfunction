execute if block ~ ~ ~ #cwm.songs:non_ground if block ~ ~-0.5 ~ #cwm.songs:non_ground run tp @s ~ ~-0.5 ~
execute unless block ~ ~ ~ #cwm.songs:non_ground run tp @s ~ ~0.5 ~
execute if block ~ ~ ~ #cwm.songs:non_ground unless block ~ ~-0.5 ~ #cwm.songs:non_ground run tag @s remove cwm.place_on_ground
execute unless block ~ ~ ~ #cwm.songs:non_ground run function cwm.songs:util/place_on_ground
execute if block ~ ~ ~ #cwm.songs:non_ground if block ~ ~-0.5 ~ #cwm.songs:non_ground as @s run function cwm.songs:util/place_on_ground