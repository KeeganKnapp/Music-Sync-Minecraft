scoreboard players set #song music_random 0


tag @a remove end_music_sync
execute as @a at @s if dimension minecraft:the_end run tag @s add end_music_sync
execute if entity @a[tag=end_music_sync] store result score #song music_random run random value 1..2
execute if entity @a[tag=end_music_sync] store result score #padding_end music_random run random value 4000..8000

stopsound @a[tag=end_music_sync] music
tag @a[tag=end_music_sync] add music_current_end
tag @a[tag=end_music_sync] remove music_current_overworld
tag @a[tag=end_music_sync] remove music_current_underwater
tag @a[tag=end_music_sync] remove music_current_nether

execute if score #song music_random matches 1 as @a[tag=end_music_sync] at @s run scoreboard players set end song_duration_left 6860
execute if score #song music_random matches 1 as @a[tag=end_music_sync] at @s run playsound globalmusic:c418_boss music @a[tag=end_music_sync]
execute if score #song music_random matches 1 as @a[tag=end_music_sync] at @s run tellraw @a[tag=end_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Boss","color":"light_purple","italic":true},{"text":" (5:43)","color":"dark_gray"}]

execute if score #song music_random matches 2 as @a[tag=end_music_sync] at @s run scoreboard players set end song_duration_left 18080
execute if score #song music_random matches 2 as @a[tag=end_music_sync] at @s run playsound globalmusic:c418_the_end music @a[tag=end_music_sync]
execute if score #song music_random matches 2 as @a[tag=end_music_sync] at @s run tellraw @a[tag=end_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"The End","color":"light_purple","italic":true},{"text":" (15:04)","color":"dark_gray"}]

execute if entity @a[tag=end_music_sync] run scoreboard players operation end song_duration_left += #padding_end music_random

