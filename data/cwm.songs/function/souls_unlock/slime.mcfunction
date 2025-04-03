execute at @s run particle minecraft:item_slime ~ ~1 ~ 1 1 1 0 100 force
execute at @s run playsound minecraft:entity.slime.hurt master @a ~ ~ ~
execute at @s run playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~
tellraw @a {"color":"green","text":"The Slime Core's soul is freed."}
clear @s carrot_on_a_stick[item_model="minecraft:slime_ball"]
data merge storage cwm.songs:freed_souls {slime: 1b}
advancement grant @a until cwm.songs:songs/slime
recipe take @a cwm.songs:souls/slime_core