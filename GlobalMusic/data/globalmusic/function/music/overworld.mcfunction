
scoreboard players set #song music_random 0


tag @a remove overworld_music_sync

execute as @a at @s if dimension minecraft:overworld run tag @s add overworld_music_sync
execute if entity @a[tag=overworld_music_sync,tag=!underwater_music_sync] store result score #song music_random run random value 1..37
execute if entity @a[tag=overworld_music_sync,tag=!underwater_music_sync] store result score #padding_overworld music_random run random value 500..1500

stopsound @a[tag=overworld_music_sync] music
tag @a[tag=overworld_music_sync,tag=!underwater_music_sync] add music_current_overworld
tag @a[tag=overworld_music_sync,tag=!underwater_music_sync] remove music_current_underwater
tag @a[tag=overworld_music_sync,tag=!underwater_music_sync] remove music_current_nether
tag @a[tag=overworld_music_sync,tag=!underwater_music_sync] remove music_current_end

execute if score #song music_random matches 1 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] run scoreboard players set overworld song_duration_left 12060
execute if score #song music_random matches 1 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] run playsound globalmusic:c418_alpha music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 1 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Alpha","color":"green","italic":true},{"text":" (10:03)","color":"dark_gray"}]

execute if score #song music_random matches 2 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 6200
execute if score #song music_random matches 2 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_aria_math music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 2 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Aria Math","color":"green","italic":true},{"text":" (5:10)","color":"dark_gray"}]

execute if score #song music_random matches 3 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 3520
execute if score #song music_random matches 3 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_beginning_2 music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 3 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Beginning 2","color":"green","italic":true},{"text":" (2:56)","color":"dark_gray"}]

execute if score #song music_random matches 4 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 7560
execute if score #song music_random matches 4 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_biome_fest music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 4 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Biome Fest","color":"green","italic":true},{"text":" (6:18)","color":"dark_gray"}]

execute if score #song music_random matches 5 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 6640
execute if score #song music_random matches 5 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_blind_spots music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 5 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Blind Spots","color":"green","italic":true},{"text":" (5:32)","color":"dark_gray"}]

execute if score #song music_random matches 6 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 6860
execute if score #song music_random matches 6 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_blocks music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 6 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Blocks","color":"green","italic":true},{"text":" (5:43)","color":"dark_gray"}]

execute if score #song music_random matches 7 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 1740
execute if score #song music_random matches 7 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_chris music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 7 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Chris","color":"green","italic":true},{"text":" (1:27)","color":"dark_gray"}]

execute if score #song music_random matches 8 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 3820
execute if score #song music_random matches 8 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_clark music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 8 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Clark","color":"green","italic":true},{"text":" (3:11)","color":"dark_gray"}]

execute if score #song music_random matches 9 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 5080
execute if score #song music_random matches 9 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_danny music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 9 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Danny","color":"green","italic":true},{"text":" (4:14)","color":"dark_gray"}]

execute if score #song music_random matches 10 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 840
execute if score #song music_random matches 10 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_death music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 10 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Death","color":"green","italic":true},{"text":" (0:42)","color":"dark_gray"}]

execute if score #song music_random matches 11 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 2220
execute if score #song music_random matches 11 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_door music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 11 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Door","color":"green","italic":true},{"text":" (1:51)","color":"dark_gray"}]

execute if score #song music_random matches 12 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 9940
execute if score #song music_random matches 12 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_dreiton music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 12 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Dreiton","color":"green","italic":true},{"text":" (8:17)","color":"dark_gray"}]

execute if score #song music_random matches 13 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 1920
execute if score #song music_random matches 13 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_droopy_likes_ricochet music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 13 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Droopy Likes Ricochet","color":"green","italic":true},{"text":" (1:36)","color":"dark_gray"}]

execute if score #song music_random matches 14 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 2340
execute if score #song music_random matches 14 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_droopy_likes_your_face music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 14 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Droopy Likes Your Face","color":"green","italic":true},{"text":" (1:57)","color":"dark_gray"}]

execute if score #song music_random matches 15 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 1360
execute if score #song music_random matches 15 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_dry_hands music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 15 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Dry Hands","color":"green","italic":true},{"text":" (1:08)","color":"dark_gray"}]

execute if score #song music_random matches 16 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 2480
execute if score #song music_random matches 16 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_excuse music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 16 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Excuse","color":"green","italic":true},{"text":" (2:04)","color":"dark_gray"}]

execute if score #song music_random matches 17 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 3840
execute if score #song music_random matches 17 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_far music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 17 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Far","color":"green","italic":true},{"text":" (3:12)","color":"dark_gray"}]

execute if score #song music_random matches 18 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 3400
execute if score #song music_random matches 18 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_flake music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 18 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Flake","color":"green","italic":true},{"text":" (2:50)","color":"dark_gray"}]

execute if score #song music_random matches 19 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 4880
execute if score #song music_random matches 19 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_floating_trees music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 19 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Floating Trees","color":"green","italic":true},{"text":" (4:04)","color":"dark_gray"}]

execute if score #song music_random matches 20 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 4080
execute if score #song music_random matches 20 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_haggstrom music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 20 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Haggstrom","color":"green","italic":true},{"text":" (3:24)","color":"dark_gray"}]

execute if score #song music_random matches 21 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 7220
execute if score #song music_random matches 21 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_haunt_muskie music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 21 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Haunt Muskie","color":"green","italic":true},{"text":" (6:01)","color":"dark_gray"}]

execute if score #song music_random matches 22 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 5520
execute if score #song music_random matches 22 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_intro music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 22 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Intro","color":"green","italic":true},{"text":" (4:36)","color":"dark_gray"}]

execute if score #song music_random matches 23 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 1300
execute if score #song music_random matches 23 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_key music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 23 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Key","color":"green","italic":true},{"text":" (1:05)","color":"dark_gray"}]

execute if score #song music_random matches 24 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 1840
execute if score #song music_random matches 24 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_ki music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 24 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Ki","color":"green","italic":true},{"text":" (1:32)","color":"dark_gray"}]

execute if score #song music_random matches 25 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 4980
execute if score #song music_random matches 25 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_kyoto music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 25 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Kyoto","color":"green","italic":true},{"text":" (4:09)","color":"dark_gray"}]

execute if score #song music_random matches 26 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 3540
execute if score #song music_random matches 26 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_living_mice music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 26 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Living Mice","color":"green","italic":true},{"text":" (2:57)","color":"dark_gray"}]

execute if score #song music_random matches 27 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 1960
execute if score #song music_random matches 27 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_mellohi music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 27 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Mellohi","color":"green","italic":true},{"text":" (1:38)","color":"dark_gray"}]

execute if score #song music_random matches 28 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 5620
execute if score #song music_random matches 28 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_mice_on_venus music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 28 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Mice on Venus","color":"green","italic":true},{"text":" (4:41)","color":"dark_gray"}]

execute if score #song music_random matches 29 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 5080
execute if score #song music_random matches 29 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_minecraft music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 29 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Minecraft","color":"green","italic":true},{"text":" (4:14)","color":"dark_gray"}]

execute if score #song music_random matches 30 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 3200
execute if score #song music_random matches 30 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_moog_city music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 30 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Moog City","color":"green","italic":true},{"text":" (2:40)","color":"dark_gray"}]

execute if score #song music_random matches 31 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 3700
execute if score #song music_random matches 31 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_mutation music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 31 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Mutation","color":"green","italic":true},{"text":" (3:05)","color":"dark_gray"}]

execute if score #song music_random matches 32 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 1300
execute if score #song music_random matches 32 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_oxygene music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 32 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Oxygène","color":"green","italic":true},{"text":" (1:05)","color":"dark_gray"}]

execute if score #song music_random matches 33 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 4160
execute if score #song music_random matches 33 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_subwoofer_lullaby music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 33 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Subwoofer Lullaby","color":"green","italic":true},{"text":" (3:28)","color":"dark_gray"}]

execute if score #song music_random matches 34 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 4300
execute if score #song music_random matches 34 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_sweden music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 34 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Sweden","color":"green","italic":true},{"text":" (3:35)","color":"dark_gray"}]

execute if score #song music_random matches 35 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 10300
execute if score #song music_random matches 35 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_taswell music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 35 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Taswell","color":"green","italic":true},{"text":" (8:35)","color":"dark_gray"}]

execute if score #song music_random matches 36 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 4680
execute if score #song music_random matches 36 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_wait music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 36 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Wait","color":"green","italic":true},{"text":" (3:54)","color":"dark_gray"}]

execute if score #song music_random matches 37 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run scoreboard players set overworld song_duration_left 1800
execute if score #song music_random matches 37 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run playsound globalmusic:c418_wet_hands music @a[tag=overworld_music_sync,tag=!underwater_music_sync]
execute if score #song music_random matches 37 as @a[tag=overworld_music_sync,tag=!underwater_music_sync] at @s run tellraw @a[tag=overworld_music_sync,tag=!underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Wet Hands","color":"green","italic":true},{"text":" (1:30)","color":"dark_gray"}]

execute if entity @a[tag=overworld_music_sync,tag=!underwater_music_sync] run scoreboard players operation overworld song_duration_left += #padding_overworld music_random

tag @a remove overworld_music_sync
