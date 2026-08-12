# Runs every tick from minecraft:tick
# Hard-cut music only when a player changes DIMENSIONS.
# Water <-> land in the overworld is intentionally NOT hard-cut here.

# Nether music must only continue while the player is still in the Nether.
execute as @a[tag=music_current_nether] at @s unless dimension minecraft:the_nether run stopsound @s music
execute as @a[tag=music_current_nether] at @s unless dimension minecraft:the_nether run tag @s remove music_current_nether

# End music must only continue while the player is still in the End.
execute as @a[tag=music_current_end] at @s unless dimension minecraft:the_end run stopsound @s music
execute as @a[tag=music_current_end] at @s unless dimension minecraft:the_end run tag @s remove music_current_end

# Land overworld music must only continue while the player is still in the overworld.
execute as @a[tag=music_current_overworld] at @s unless dimension minecraft:overworld run stopsound @s music
execute as @a[tag=music_current_overworld] at @s unless dimension minecraft:overworld run tag @s remove music_current_overworld

# Underwater music is also overworld music, so only hard-cut it when leaving the overworld.
# Do NOT stop it when moving between water and land inside the overworld.
execute as @a[tag=music_current_underwater] at @s unless dimension minecraft:overworld run stopsound @s music
execute as @a[tag=music_current_underwater] at @s unless dimension minecraft:overworld run tag @s remove music_current_underwater
