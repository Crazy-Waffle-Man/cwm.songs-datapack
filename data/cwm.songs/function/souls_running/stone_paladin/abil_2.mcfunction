item replace entity @s armor.head with leather[item_model="stone_paladin/stoneskin",item_name="Stoneskin",lore=["You are immune to damage, but cannot move."]]
effect give @s resistance infinite 255 true
effect give @s invisibility infinite 255 true
attribute @s knockback_resistance base set 1000
attribute @s movement_speed base set 0
attribute @s jump_strength base set 0
item replace entity @s hotbar.1 with air
scoreboard players set @s CD2 800
playsound entity.warden.heartbeat master @a ~ ~ ~ 1 1 1