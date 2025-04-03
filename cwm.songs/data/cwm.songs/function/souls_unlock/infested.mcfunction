team add cwm.infestation
team modify cwm.infestation friendlyFire false
team modify cwm.infestation seeFriendlyInvisibles true
data modify storage cwm.songs:freed_souls infested set value 1b
advancement grant @a through cwm.songs:songs/infested
recipe take @a cwm.songs:souls/infested
playsound entity.silverfish.ambient master @a ~ ~ ~ 10 2 1
playsound block.sculk_shrieker.shriek master @a ~ ~ ~ 10 2 1
item replace entity @s weapon.mainhand with air
tellraw @a {"color": "gray", "text": "The Infestation's Soul has been freed."}