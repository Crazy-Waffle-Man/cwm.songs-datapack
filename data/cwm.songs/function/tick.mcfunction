#Souls
execute as @a[tag=cwm.slime_core] at @s rotated as @s run function cwm.songs:souls_running/slime/main
execute as @a[tag=cwm.infested] at @s rotated as @s run function cwm.songs:souls_running/infested/main
execute as @a[tag=cwm.stone_paladin] at @s rotated as @s run function cwm.songs:souls_running/stone_paladin/main

#Trigger detection
execute as @a[scores={choose_soul=1..}] run function cwm.songs:player_triggers/choose_soul
execute if data storage cwm.songs:music_initialized_bool {Bool: 1b} run scoreboard players enable @a choose_soul

#Utils
execute as @e[type=!minecraft:player, tag=cwm.yeet] at @s rotated as @p run function cwm.songs:util/yeet
execute as @e[tag=cwm.place_on_ground] at @s run function cwm.songs:util/place_on_ground
execute as @e[tag=!cwm.uuid_gotten] run function cwm.songs:util/get_uuid
execute as @e[tag=cwm.homing] at @s rotated as @s run function cwm.songs:util/homing_missiles

#Manage Cooldowns
execute as @a[scores={CD1=1..},tag=!cwm.stone_paladin] run item replace entity @s hotbar.0 with minecraft:cyan_dye[item_model="minecraft:barrier",item_name="Cooldown"]
execute as @a[scores={CD2=1..}] run item replace entity @s hotbar.1 with minecraft:cyan_dye[item_model="minecraft:barrier",item_name="Cooldown"]
execute as @a[scores={CD3=1..}] run item replace entity @s hotbar.2 with minecraft:cyan_dye[item_model="minecraft:barrier",item_name="Cooldown"]
scoreboard players remove @a[scores={CD1=1..}] CD1 1
scoreboard players remove @a[scores={CD2=1..}] CD2 1
scoreboard players remove @a[scores={CD3=1..}] CD3 1

#kill special items
kill @e[type=item,nbt={Item:{id:"minecraft:cyan_dye",components:{"minecraft:item_model":"minecraft:barrier","minecraft:item_name":"Cooldown"}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}, nbt = !{Item: {components:{"minecraft:item_model":"minecraft:carrot_on_a_stick"}}}]

#Universal right-click detection
execute as @a[scores={cwm.songs.rclick=1..}] run function cwm.songs:right_click_effects_main