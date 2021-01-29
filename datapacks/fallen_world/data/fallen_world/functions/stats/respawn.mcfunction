### If a player respawns (runs as player at player)

# Reset health
scoreboard players operation @s hp = @s max_hp

# Set gamemode
gamemode adventure @s

# TP to spawn if unlocked spawn waypoint
tp @s[tag=unlockedSpawn] -113 75 -175

# TP to Pauls house if just spawned
tp @s[tag=!unlockedSpawn] 192 144 -349 91 20

# Remove effects
effect clear @p

# Refill hungerbar
effect give @p minecraft:saturation 1 255

# Reset mana
scoreboard players set @s mana 0

# Reset XP
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999

# They are alive now :D
tag @s remove dead