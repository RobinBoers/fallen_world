### LOAD FUNCTION FILE (RUNS WHEN DATAPACK IS LOADED) ###

gamerule sendCommandFeedback false
gamerule commandBlockOutput false

########## SCOREBOARD ###############

#@@@@ Gameplay @@@@#
scoreboard objectives add nothing dummy
scoreboard players reset @a nothing

scoreboard objectives add Levels dummy
scoreboard objectives add xp dummy
scoreboard objectives add xpNotify trigger
scoreboard objectives add Classes trigger

scoreboard objectives add rubys dummy {"text":"\uE000","bold":"true"}]
scoreboard objectives add hasToStoreRuby dummy
scoreboard objectives add buyItem trigger
scoreboard objectives add rubyInput trigger
scoreboard objectives add rubyOutput trigger

scoreboard objectives add clickStick minecraft.used:carrot_on_a_stick

scoreboard objectives add attackCooldown dummy
scoreboard objectives add usedWand minecraft.used:carrot_on_a_stick
scoreboard objectives add usedLeftWand minecraft.custom:minecraft.damage_dealt
scoreboard objectives add element dummy
scoreboard objectives add spellId dummy

scoreboard objectives add cDefence dummy
scoreboard objectives add lDefence dummy
scoreboard objectives add bDefence dummy

scoreboard objectives add bonusDefence dummy
scoreboard objectives add defence dummy 
scoreboard objectives add trueDefence dummy
scoreboard objectives add defenceFactor dummy 

scoreboard objectives add hp dummy {"text":"❤","color":"red"}
scoreboard objectives add max_hp dummy
scoreboard objectives add hunger food
scoreboard objectives add mana dummy
scoreboard objectives add touchingWater dummy

scoreboard objectives add usedGapple minecraft.used:minecraft.golden_apple
scoreboard objectives add usedGodapple minecraft.used:minecraft.enchanted_golden_apple

scoreboard objectives add hitpoints minecraft.custom:minecraft.damage_taken
scoreboard objectives add respawnCooldown dummy

scoreboard objectives add e trigger {"text":"Emoji Menu","color":"yellow","bold":"true"}

scoreboard objectives add init dummy

### Custom music
scoreboard objectives add song1 dummy
scoreboard players set @a song1 3380

### Set default values
execute as @a unless score @s rubys matches 1.. run scoreboard players set @s rubys 0
execute as @a unless score @s defence matches 1.. run scoreboard players set @s defence 0

#@@@@ Quests @@@@#
scoreboard objectives add dialogVill minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add clickedVill minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add currentQuest trigger
scoreboard objectives add cQuest dummy

#@@@@ Triggers @@@@#
scoreboard objectives add warp trigger

### Enable them
scoreboard players enable @a warp
scoreboard players enable @a Classes
scoreboard players enable @a currentQuest

#@@@@ Teams @@@@#

### Make teams
team add admin {"text": "Admin"}
team add mod {"text": "Moderator"}
team add warrior {"text": "Warrior"}
team add magician {"text": "Magician"}
team add ranger {"text": "Ranger"}
team add ninja {"text": "Ninja"}

### Colors
team modify admin color white
team modify mod color white
team modify warrior color gold
team modify magician color light_purple
team modify ranger color green
team modify ninja color yellow

### Prefix for teams
team modify admin prefix {"text":"\uE006 ","bold":"true"}
team modify mod prefix {"text":"\uE007 ","bold":"true"}

team modify warrior prefix {"text":"[","color":"gold"}
team modify warrior suffix {"text":"] ","color":"gold"}

team modify magician prefix {"text":"[","color":"light_purple"}
team modify magician suffix {"text":"] ","color":"light_purple"}

team modify ranger prefix {"text":"[","color":"green"}
team modify ranger suffix {"text":"] ","color":"green"}

team modify ninja prefix {"text":"[","color":"yellow"}
team modify ninja suffix {"text":"] ","color":"yellow"}

# team modify admin prefix {"text":"§c[Admin]§r "}
# team modify mod prefix {"text":"§9[Mod]§r "}

#@@@@ Sidebar @@@@#

### Create sidebars
scoreboard objectives add sidebarStaff dummy {"text":" ☣ FALLEN WORLD ☣ ","color":"red","bold":"true"}
scoreboard objectives add sidebarWarrior dummy {"text":" ☣ FALLEN WORLD ☣ ","color":"gold","bold":"true"}
scoreboard objectives add sidebarMagician dummy {"text":" ☣ FALLEN WORLD ☣ ","color":"light_purple","bold":"true"}
scoreboard objectives add sidebarRanger dummy {"text":" ☣ FALLEN WORLD ☣ ","color":"green","bold":"true"}
scoreboard objectives add sidebarNinja dummy {"text":" ☣ FALLEN WORLD ☣ ","color":"yellow","bold":"true"}

### Add scoreboards to screen
scoreboard objectives setdisplay list Levels
scoreboard objectives setdisplay belowName hp
scoreboard objectives setdisplay sidebar nothing

bossbar add title {"text":" ☣ FALLEN WORLD ☣ ","color":"dark_aqua","bold":"true"}
bossbar set title color yellow

### Debug Info
say Datapacks successfully loaded

### Start slower loops
function fallen_world:loop10t
function fallen_world:loop20t
function fallen_world:loop60t
function fallen_world:loop200t

### Ice Boss
kill @e[tag=IceSpikey]
kill @e[type=item]
kill @e[type=fireball]
