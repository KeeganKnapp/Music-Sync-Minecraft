# All the things that need to happen on load or /reload

scoreboard objectives add music_random dummy
scoreboard objectives add song_duration_left dummy

scoreboard players set underwater song_duration_left 0
scoreboard players set nether song_duration_left 0
scoreboard players set overworld song_duration_left 0
scoreboard players set end song_duration_left 0

# Clear runtime music-state tags on /reload.
tag @a remove music_current_overworld
tag @a remove music_current_underwater
tag @a remove music_current_nether
tag @a remove music_current_end
tag @a remove area_overworld
tag @a remove area_underwater
tag @a remove area_nether
tag @a remove area_end

schedule function globalmusic:20tick 20t
schedule function globalmusic:100tick 100t
