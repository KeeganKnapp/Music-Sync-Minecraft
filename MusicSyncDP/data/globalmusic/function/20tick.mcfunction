

execute unless score underwater song_duration_left matches 1.. run function globalmusic:music/water
execute unless score nether song_duration_left matches 1.. run function globalmusic:music/nether
execute unless score end song_duration_left matches 1.. run function globalmusic:music/end
execute unless score overworld song_duration_left matches 1.. run function globalmusic:music/overworld

execute if score overworld song_duration_left matches 1.. run scoreboard players remove overworld song_duration_left 20
execute if score nether song_duration_left matches 1.. run scoreboard players remove nether song_duration_left 20
execute if score end song_duration_left matches 1.. run scoreboard players remove end song_duration_left 20
execute if score underwater song_duration_left matches 1.. run scoreboard players remove underwater song_duration_left 20



schedule function globalmusic:20tick 20t


