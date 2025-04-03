summon minecraft:llama_spit ^ ^ ^1 {Tags:["cwm.yeet"]}
function cwm.songs:util/get_uuid
playsound minecraft:entity.llama.spit master @a ~ ~ ~
data modify entity @e[type=minecraft:llama_spit,limit=1,sort=nearest] Owner set from entity @s UUID
scoreboard players set @s CD1 20