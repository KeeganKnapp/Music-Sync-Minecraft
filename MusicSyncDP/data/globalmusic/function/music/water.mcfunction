scoreboard players set #song music_random 0


tag @a remove underwater_music_sync

execute as @a at @s if biome ~ ~ ~ minecraft:ocean run tag @s add underwater_music_sync
execute as @a at @s if biome ~ ~ ~ minecraft:deep_ocean run tag @s add underwater_music_sync
execute as @a at @s if biome ~ ~ ~ minecraft:deep_frozen_ocean run tag @s add underwater_music_sync
execute as @a at @s if biome ~ ~ ~ minecraft:deep_lukewarm_ocean run tag @s add underwater_music_sync
execute as @a at @s if biome ~ ~ ~ minecraft:cold_ocean run tag @s add underwater_music_sync
execute as @a at @s if biome ~ ~ ~ minecraft:deep_ocean run tag @s add underwater_music_sync
execute as @a at @s if biome ~ ~ ~ minecraft:frozen_ocean run tag @s add underwater_music_sync
execute as @a at @s if biome ~ ~ ~ minecraft:lukewarm_ocean run tag @s add underwater_music_sync
execute as @a at @s if biome ~ ~ ~ minecraft:warm_ocean run tag @s add underwater_music_sync
execute as @a at @s if biome ~ ~ ~ minecraft:warm_ocean run tag @s add underwater_music_sync
execute as @a at @s if biome ~ ~ ~ terralith:deep_warm_ocean run tag @s add underwater_music_sync



execute if entity @a[tag=underwater_music_sync] store result score #song music_random run random value 1..3
execute if entity @a[tag=underwater_music_sync] store result score #padding_underwater music_random run random value 500..2000

stopsound @a[tag=underwater_music_sync] music
tag @a[tag=underwater_music_sync] add music_current_underwater
tag @a[tag=underwater_music_sync] remove music_current_overworld
tag @a[tag=underwater_music_sync] remove music_current_nether
tag @a[tag=underwater_music_sync] remove music_current_end

execute if score #song music_random matches 1 as @a[tag=underwater_music_sync] at @s run scoreboard players set underwater song_duration_left 6060
execute if score #song music_random matches 1 as @a[tag=underwater_music_sync] at @s run playsound globalmusic:axolotl music @a[tag=underwater_music_sync]
execute if score #song music_random matches 1 as @a[tag=underwater_music_sync] at @s run tellraw @a[tag=underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Axolotl","color":"blue","italic":true},{"text":" (5:03)","color":"dark_gray"}]

execute if score #song music_random matches 2 as @a[tag=underwater_music_sync] at @s run scoreboard players set underwater song_duration_left 7460
execute if score #song music_random matches 2 as @a[tag=underwater_music_sync] at @s run playsound globalmusic:dragon_fish music @a[tag=underwater_music_sync]
execute if score #song music_random matches 2 as @a[tag=underwater_music_sync] at @s run tellraw @a[tag=underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Dragon Fish","color":"blue","italic":true},{"text":" (6:13)","color":"dark_gray"}]

execute if score #song music_random matches 3 as @a[tag=underwater_music_sync] at @s run scoreboard players set underwater song_duration_left 4900
execute if score #song music_random matches 3 as @a[tag=underwater_music_sync] at @s run playsound globalmusic:shuniji music @a[tag=underwater_music_sync]
execute if score #song music_random matches 3 as @a[tag=underwater_music_sync] at @s run tellraw @a[tag=underwater_music_sync] [{"text":"Now Playing: ","color":"gray"},{"text":"Shuniji","color":"blue","italic":true},{"text":" (4:05)","color":"dark_gray"}]

execute if entity @a[tag=underwater_music_sync] run scoreboard players operation underwater song_duration_left += #padding_underwater music_random

