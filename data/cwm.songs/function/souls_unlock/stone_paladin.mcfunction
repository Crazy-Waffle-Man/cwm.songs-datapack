advancement grant @a until cwm.songs:songs/stone_paladin
recipe take @a cwm.songs:souls/rock
particle block_crumble{block_state:{Name:"stone"}} ~ ~ ~ 3 3 3 0 1000 force
playsound block.stone.break master @a ~ ~ ~ 10 2 1
playsound block.sculk_shrieker.shriek master @a ~ ~ ~ 10 2 1
tellraw @a {"color": "gray","text": "The Stone Paladin's Soul has been freed."}
item replace entity @s weapon.mainhand with air
data modify storage cwm.songs:freed_souls rock set value 1b