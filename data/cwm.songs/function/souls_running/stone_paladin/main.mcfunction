execute unless score @s CD1 matches 1.. run item replace entity @s hotbar.0 with carrot_on_a_stick[attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:4,operation:"add_value"},{id:"attack_speed",type:"attack_speed",amount:-2.4,operation:"add_value"}],item_model="stone_paladin/init",item_name='"Stone Claymore"',lore=['"Good for some damage."','"Right click to power up for 5 seconds."']]
execute unless score @s CD2 matches 1.. run item replace entity @s hotbar.1 with carrot_on_a_stick[item_model="stone_paladin/stoneskin",item_name='"Stoneskin"',lore=['"Right-click to become immune to damage."','"You will also be immobilized."']]
execute unless score @s CD3 matches 1.. run item replace entity @s hotbar.2 with carrot_on_a_stick[item_model="stone_paladin/stone_vanish",item_name='"Earthen Void"',lore=['"Right-click to rend a void in the earth."']]
execute if score @s CD2 matches 600 run function cwm.songs:souls_running/stone_paladin/abil_2_end
execute if score @s[nbt={SelectedItemSlot:0}] cwm.songs.rclick matches 1.. run function cwm.songs:souls_running/stone_paladin/abil_1
execute if score @s[nbt={SelectedItemSlot:1}] cwm.songs.rclick matches 1.. run function cwm.songs:souls_running/stone_paladin/abil_2
execute if score @s[nbt={SelectedItemSlot:2}] cwm.songs.rclick matches 1.. run function cwm.songs:souls_running/stone_paladin/abil_3
execute if score @s CD2 matches 600.. rotated as @s run rotate @s ~ 0
execute if entity @s[scores={CD1=..0}] run title @s actionbar " "
execute if entity @s[scores={CD1=1..20}] run title @s actionbar "1 second"
execute if entity @s[scores={CD1=21..40}] run title @s actionbar "2 seconds"
execute if entity @s[scores={CD1=41..60}] run title @s actionbar "3 seconds"
execute if entity @s[scores={CD1=61..80}] run title @s actionbar "4 seconds"
execute if entity @s[scores={CD1=81..100}] run title @s actionbar "5 seconds"