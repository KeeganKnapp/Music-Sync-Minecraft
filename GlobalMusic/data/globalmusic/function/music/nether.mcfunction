

scoreboard players set #song music_random 0


tag @a remove nether_music_sync
execute as @a at @s if dimension minecraft:the_nether run tag @s add nether_music_sync

execute if entity @a[tag=nether_music_sync] store result score #song music_random run random value 1..4
execute if entity @a[tag=nether_music_sync] store result score #padding_nether music_random run random value 4000..8000

stopsound @a[tag=nether_music_sync] music
tag @a[tag=nether_music_sync] add music_current_nether
tag @a[tag=nether_music_sync] remove music_current_overworld
tag @a[tag=nether_music_sync] remove music_current_underwater
tag @a[tag=nether_music_sync] remove music_current_end


execute if score #song music_random matches 1 as @a[tag=nether_music_sync] at @s run scoreboard players set nether song_duration_left 5500
execute if score #song music_random matches 1 as @a[tag=nether_music_sync] at @s run playsound globalmusic:c418_ballad_of_the_cats music @a[tag=nether_music_sync]
execute if score #song music_random matches 1 as @a[tag=nether_music_sync] at @s run tellraw @a[tag=nether_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Ballad of the Cats","color":"red","italic":true},{"text":" (4:35)","color":"dark_gray"}]

execute if score #song music_random matches 2 as @a[tag=nether_music_sync] at @s run scoreboard players set nether song_duration_left 5080
execute if score #song music_random matches 2 as @a[tag=nether_music_sync] at @s run playsound globalmusic:c418_concrete_halls music @a[tag=nether_music_sync]
execute if score #song music_random matches 2 as @a[tag=nether_music_sync] at @s run tellraw @a[tag=nether_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Concrete Halls","color":"red","italic":true},{"text":" (4:14)","color":"dark_gray"}]

execute if score #song music_random matches 3 as @a[tag=nether_music_sync] at @s run scoreboard players set nether song_duration_left 5920
execute if score #song music_random matches 3 as @a[tag=nether_music_sync] at @s run playsound globalmusic:c418_dead_voxel music @a[tag=nether_music_sync]
execute if score #song music_random matches 3 as @a[tag=nether_music_sync] at @s run tellraw @a[tag=nether_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Dead Voxel","color":"red","italic":true},{"text":" (4:56)","color":"dark_gray"}]

execute if score #song music_random matches 4 as @a[tag=nether_music_sync] at @s run scoreboard players set nether song_duration_left 4780
execute if score #song music_random matches 4 as @a[tag=nether_music_sync] at @s run playsound globalmusic:c418_warmth music @a[tag=nether_music_sync]
execute if score #song music_random matches 4 as @a[tag=nether_music_sync] at @s run tellraw @a[tag=nether_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Warmth","color":"red","italic":true},{"text":" (3:59)","color":"dark_gray"}]

execute if entity @a[tag=nether_music_sync] run scoreboard players operation nether song_duration_left += #padding_nether music_random

tag @a remove nether_music_sync
