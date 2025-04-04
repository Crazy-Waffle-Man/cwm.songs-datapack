item replace entity @s hotbar.0 with carrot_on_a_stick[item_model="infested/decay",item_name="Infest",lore=["Inflict enemies in front of you with The Infestation","The Infestation is a combination of the Infested and Poison effects."]]
item replace entity @s hotbar.1 with carrot_on_a_stick[item_model="infested/cataclysm",item_name="Downfall Plague", lore=["Infest blocks around you.", "Call upon The Infestation."]]
item replace entity @s hotbar.2 with carrot_on_a_stick[item_name="Infested Souls",item_model="infested/channel",lore=["Harness the souls of nearby silverfish"]]
item replace entity @s armor.head with infested_chiseled_stone_bricks[item_model="infested/headpiece",item_name="Mask of the Infestation",attribute_modifiers=[{id:"armor",type:"armor",amount:3,operation:"add_value",slot:"head"},{id:"armor_toughness",type:"armor_toughness",amount:3,operation:"add_value",slot:"head"},{id:"knockback_resistance",type:"knockback_resistance",amount:0.1,operation:"add_value",slot:"head"}]]
effect give @s infested 5 255 true
team join cwm.infestation @e[type=silverfish]
team join cwm.infestation @s

execute if entity @s[scores={cwm.songs.rclick=1..,CD1=..0},nbt={SelectedItemSlot:0}] at @s rotated as @s anchored eyes positioned ^ ^ ^3 run function cwm.songs:souls_running/infested/abil_1
execute if entity @s[scores={cwm.songs.rclick=1..,CD2=..0},nbt={SelectedItemSlot:1}] at @s rotated as @s anchored eyes run function cwm.songs:souls_running/infested/abil_2
execute if entity @s[scores={cwm.songs.rclick=1..,CD3=..0},nbt={SelectedItemSlot:2}] at @s rotated as @s anchored eyes run function cwm.songs:souls_running/infested/abil_3