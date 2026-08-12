# Refresh area tags every 100 ticks.



# These tags describe where the player currently is.

tag @a remove area_overworld
tag @a remove area_nether
tag @a remove area_end
tag @a remove area_underwater

# Dimension areas
execute as @a at @s if dimension minecraft:overworld run tag @s add area_overworld
execute as @a at @s if dimension minecraft:the_nether run tag @s add area_nether
execute as @a at @s if dimension minecraft:the_end run tag @s add area_end

# Underwater/ocean area. This intentionally uses biome checks.
execute as @a at @s if dimension minecraft:overworld if biome ~ ~ ~ minecraft:ocean run tag @s add area_underwater
execute as @a at @s if dimension minecraft:overworld if biome ~ ~ ~ minecraft:deep_ocean run tag @s add area_underwater
execute as @a at @s if dimension minecraft:overworld if biome ~ ~ ~ minecraft:deep_frozen_ocean run tag @s add area_underwater
execute as @a at @s if dimension minecraft:overworld if biome ~ ~ ~ minecraft:deep_lukewarm_ocean run tag @s add area_underwater
execute as @a at @s if dimension minecraft:overworld if biome ~ ~ ~ minecraft:cold_ocean run tag @s add area_underwater
execute as @a at @s if dimension minecraft:overworld if biome ~ ~ ~ minecraft:frozen_ocean run tag @s add area_underwater
execute as @a at @s if dimension minecraft:overworld if biome ~ ~ ~ minecraft:lukewarm_ocean run tag @s add area_underwater
execute as @a at @s if dimension minecraft:overworld if biome ~ ~ ~ minecraft:warm_ocean run tag @s add area_underwater
execute as @a at @s if dimension minecraft:overworld if biome ~ ~ ~ terralith:deep_warm_ocean run tag @s add area_underwater

# Water is inside the overworld dimension, but it should be treated as its own music area.
# This prevents underwater players from also being tagged as land-overworld players.
tag @a[tag=area_underwater] remove area_overworld


schedule function globalmusic:100tick 100t
