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
tellraw @s "Your soul has been reset."
#Change to a display in hotbar later.
tellraw @s "Here is a list of available souls:"
execute if data storage cwm.songs:freed_souls {slime:1b} run tellraw @s {"clickEvent":{"action":"run_command","value":"/tag @s add cwm.slime_core"},"color":"green","text":"[Slime Core]"}
execute if data storage cwm.songs:freed_souls {infested:1b} run tellraw @s {"clickEvent":{"action":"run_command","value":"/tag @s add cwm.infested"},"text":"[Infested]"}
execute if data storage cwm.songs:freed_souls {rock:1b} run tellraw @s {"clickEvent": {"action": "run_command","value": "/tag @s add cwm.stone_paladin"},"color": "gray","text": "[Stone Paladin]"}
effect give @s minecraft:saturation 1 255 true