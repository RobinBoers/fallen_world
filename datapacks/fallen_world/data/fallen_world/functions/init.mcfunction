### INIT FUNCTION FILE (RUNS WHEN PLAYER JOINS) ###

### Set score to 1 (to prevent this function from running multiple times)
execute as @s run scoreboard players set @s init 1

### Cool sound
# execute at @s run playsound minecraft:entity.drowned.shoot ambient @p
# execute at @s run playsound minecraft:block.beacon.activate ambient @p
# execute at @s run playsound minecraft:block.beacon.power_select ambient @p

### Teleport player
execute as @s run tp @s 192 144 -349 90 20

## Lock door
fill 186 145 -349 186 144 -349 minecraft:barrier

### Reset XP
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999
xp add @s -999999999

### Reset base achievements
execute at @s run advancement revoke @p from fallen_world:root
execute at @s run advancement revoke @p from fallen_world_utility:root
execute at @s run advancement grant @p only fallen_world:root

### Reset Scoreboards
execute at @s run scoreboard players set @p Classes 1
execute at @s run scoreboard players set @p currentQuest 0
execute at @s run scoreboard players set @p mana 20
execute as @s run scoreboard players set @s cQuest 0
execute at @s run scoreboard players set @p warp 0
execute at @s run scoreboard players set @p Levels 1
execute at @s run scoreboard players set @p dialogVill 2
execute at @s run scoreboard players set @p max_hp 500
execute as @s run scoreboard players operation @s hp = @s max_hp
execute at @s run scoreboard players set @p rubys 0
execute at @s run scoreboard players set @p hasToStoreRuby 0
execute at @s run scoreboard players set @p defence 0
execute at @s run scoreboard players set @p xp 0
execute at @s run scoreboard players set @p xpNotify 0

tag @s remove unlockedSpawn
tag @s remove unlockedPirateBay
tag @s remove unlockedIslands
tag @s remove unlockedForest

### Reset gamemode
execute at @s run gamemode adventure @p

### Reset Classes
team leave @s
scoreboard players reset @s sidebarWarrior
scoreboard players reset @s sidebarMagician
scoreboard players reset @s sidebarRanger
scoreboard players reset @s sidebarNinja
team leave @s

### Clear inventory and effects
execute at @s run effect clear @p
execute at @s run effect give @p minecraft:saturation 1 255
execute at @s run clear @p

