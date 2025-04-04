tag @s remove cwm.slime_core
tag @s remove cwm.infested
tag @s remove cwm.stone_paladin
scoreboard players set @s CD1 -1
scoreboard players set @s CD2 -1
scoreboard players set @s CD3 -1
item replace entity @s hotbar.0 with air
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s armor.head with air
scoreboard players reset @a choose_soul
scoreboard players enable @a choose_soul
effect give @s minecraft:saturation 1 255 true
#setup
execute if data storage cwm.songs:freed_souls {slime:1b} if entity @s[scores={choose_soul=1}] run tag @s add cwm.slime_core
execute if data storage cwm.songs:freed_souls {infested:1b} if entity @s[scores={choose_soul=2}] run tag @s add cwm.infested
execute if data storage cwm.songs:freed_souls {rock:1b} if entity @s[scores={choose_soul=3}] run tag @s add cwm.stone_paladin