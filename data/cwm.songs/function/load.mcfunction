say Normalize sharing scrappy fiddles
tellraw @a "Here is the resource pack download:"
tellraw @a {"click_event":{"action":"open_url","url":"https://github.com/Crazy-Waffle-Man/cwm.songs/tree/main"},"hover_event":{"action":"show_text","value":[{"text":"Opens URL"}]},"shadow_color":-14241537,"text":"[Resource Pack Download]"}
advancement revoke @a from cwm.songs:songs/root
advancement grant @a until cwm.songs:songs/root
recipe give @a cwm.songs:music_initializer
recipe take @a cwm.songs:souls/infested
recipe take @a cwm.songs:souls/slime_core
recipe take @a cwm.songs:souls/rock
tag @a remove cwm.place_on_ground
tag @a remove cwm.infested
tag @a remove cwm.slime_core
tag @a remove cwm.stone_paladin
item replace entity @a hotbar.0 with air
item replace entity @a hotbar.1 with air
item replace entity @a hotbar.2 with air
item replace entity @a armor.head with air
#initialize scoreboards
scoreboard objectives add cwm.songs.rclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add CD1 dummy
scoreboard objectives add CD2 dummy
scoreboard objectives add CD3 dummy
scoreboard objectives add x1 dummy
scoreboard objectives add y1 dummy
scoreboard objectives add z1 dummy
scoreboard objectives add x2 dummy
scoreboard objectives add y2 dummy
scoreboard objectives add z2 dummy
scoreboard objectives add cwm.uuid_0 dummy
scoreboard objectives add cwm.uuid_1 dummy
scoreboard objectives add cwm.uuid_2 dummy
scoreboard objectives add cwm.uuid_3 dummy
scoreboard objectives add choose_soul trigger
scoreboard players set @a CD1 -1
scoreboard players set @a CD2 -1
scoreboard players set @a CD3 -1
scoreboard players reset @a choose_soul
#initialize data storage
data merge storage cwm.songs:music_initialized_bool {Bool: 0b}
data merge storage cwm.songs:freed_souls {slime: 0b, infested:0b, rock:0b}