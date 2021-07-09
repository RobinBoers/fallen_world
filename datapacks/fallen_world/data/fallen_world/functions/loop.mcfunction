### MAIN FUNCTION FILE (LOOPS EVERY GAMETICK) ###

######################### General ########################################

### Debug info
# say YeEtz!

######################### Custom Enchantments ############################
function fallen_world:custom_items/enchantments

######################### Scoreboards ####################################

#@@@@@@@@@ Quest System @@@@@@@@@#
function fallen_world:quest/dialog
function fallen_world:quest/npc

### Enable stuff
scoreboard players enable @a warp
scoreboard players enable @a currentQuest
scoreboard players enable @a Classes
scoreboard players enable @a buyItem
scoreboard players enable @a rubyInput
scoreboard players enable @a rubyOutput
scoreboard players enable @a xpNotify
scoreboard players enable @a e

#@@@@@@@@@ Level System @@@@@@@@@#

execute as @a[scores={xp=10..,Levels=1}] run function fallen_world:classes/levelup
execute as @a[scores={xp=20..,Levels=2}] run function fallen_world:classes/levelup
execute as @a[scores={xp=30..,Levels=3}] run function fallen_world:classes/levelup
execute as @a[scores={xp=40..,Levels=4}] run function fallen_world:classes/levelup
execute as @a[scores={xp=50..,Levels=5}] run function fallen_world:classes/levelup
execute as @a[scores={xp=60..,Levels=6}] run function fallen_world:classes/levelup
execute as @a[scores={xp=70..,Levels=7}] run function fallen_world:classes/levelup
execute as @a[scores={xp=80..,Levels=8}] run function fallen_world:classes/levelup
execute as @a[scores={xp=90..,Levels=9}] run function fallen_world:classes/levelup
execute as @a[scores={xp=100..,Levels=10..}] run function fallen_world:classes/levelup

execute as @a[scores={xpNotify=3..}] run scoreboard players set @s xpNotify 1

#@@@@@@@@@ WARP System @@@@@@@@@#

execute as @a[scores={warp=2,mana=..4},tag=unlockedSpawn,gamemode=!creative] run tellraw @s "§cNot enough mana to use this warp"
execute as @a[scores={warp=2,mana=..4},tag=unlockedSpawn,gamemode=!creative] run tag @s add lockedWarp
execute as @a[scores={warp=2,mana=5..},tag=unlockedSpawn,gamemode=!creative] run tellraw @s "§6Warping to Spawn"
execute as @a[scores={warp=2,mana=5..},tag=unlockedSpawn] run tp @s -113 77 -175
execute as @a[scores={warp=2},gamemode=creative] run tp @s -113 77 -175
execute as @a[scores={warp=2,mana=5..},tag=unlockedSpawn,gamemode=!creative] run scoreboard players remove @s mana 5
execute as @a[scores={warp=2},tag=!unlockedSpawn,gamemode=!creative] run tellraw @s "§cWarp for this destination is locked"
execute as @a[scores={warp=2},tag=!unlockedSpawn,gamemode=!creative] run tag @s add lockedWarp

execute as @a[scores={warp=3}] run tellraw @s "§6Warping to Pauls House"
execute as @a[scores={warp=3}] run tp @s 192 144 -349 91 20

execute as @a[scores={warp=4,mana=..7},tag=unlockedPirateBay,gamemode=!creative] run tellraw @s "§cNot enough mana to use this warp"
execute as @a[scores={warp=4,mana=..7},tag=unlockedPirateBay,gamemode=!creative] run tag @s add lockedWarp
execute as @a[scores={warp=4,mana=8..},tag=unlockedPirateBay,gamemode=!creative] run tellraw @s "§6Warping to Pirate Bay"
execute as @a[scores={warp=4,mana=8..},tag=unlockedPirateBay] run tp @s -150 80 169
execute as @a[scores={warp=4},gamemode=creative] run tp @s -150 80 169
execute as @a[scores={warp=4,mana=8..},tag=unlockedPirateBay,gamemode=!creative] run scoreboard players remove @s mana 8
execute as @a[scores={warp=4},tag=!unlockedPirateBay,gamemode=!creative] run tellraw @s "§cWarp for this destination is locked"
execute as @a[scores={warp=4},tag=!unlockedPirateBay,gamemode=!creative] run tag @s add lockedWarp

execute as @a[scores={warp=5,mana=..7},tag=unlockedIslands,gamemode=!creative] run tellraw @s "§cNot enough mana to use this warp"
execute as @a[scores={warp=5,mana=..7},tag=unlockedIslands,gamemode=!creative] run tag @s add lockedWarp
execute as @a[scores={warp=5,mana=8..},tag=unlockedIslands,gamemode=!creative] run tellraw @s "§6Warping to the Far Islands"
execute as @a[scores={warp=5,mana=8..},tag=unlockedIslands] run tp @s -168 77 478
execute as @a[scores={warp=5},gamemode=creative] run tp @s -168 77 478
execute as @a[scores={warp=5,mana=8..},tag=unlockedIslands,gamemode=!creative] run scoreboard players remove @s mana 8
execute as @a[scores={warp=5,mana=8..},tag=!unlockedIslands,gamemode=!creative] run tellraw @s "§cPlease unlock Pirate Bay first"
execute as @a[scores={warp=5,mana=8..},tag=!unlockedIslands,gamemode=!creative] run tag @s add lockedWarp

execute as @a[scores={warp=5,mana=..7},tag=unlockedForest,gamemode=!creative] run tellraw @s "§cNot enough mana to use this warp"
execute as @a[scores={warp=5,mana=..7},tag=unlockedForest,gamemode=!creative] run tag @s add lockedWarp
execute as @a[scores={warp=6,mana=8..},tag=unlockedForest,gamemode=!creative] run tellraw @s "§6Warping to the Dark Forest"
execute as @a[scores={warp=6,mana=8..},tag=unlockedForest] run tp @s -138 76 -360
execute as @a[scores={warp=6},gamemode=creative] run tp @s -138 76 -360
execute as @a[scores={warp=6,mana=8..},tag=unlockedIslands,gamemode=!creative] run scoreboard players remove @s mana 8
execute as @a[scores={warp=6,mana=8..},tag=!unlockedForest,gamemode=!creative] run tellraw @s "§cWarp for this destination is locked"
execute as @a[scores={warp=6,mana=8..},tag=!unlockedForest,gamemode=!creative] run tag @s add lockedWarp

execute as @a[scores={warp=7}] run tellraw @s "§6Warping to the Magical Forest"
execute as @a[scores={warp=7}] run tp @s -134 77 -177

execute as @a[scores={warp=11}] run tellraw @s "§6Warping to the Vulcano Dungeon"
execute as @a[scores={warp=11}] run tp @s -355 120 138

execute as @a[scores={warp=12}] run tp @s -113 77 -175

execute as @a[scores={warp=1..},tag=!lockedWarp] at @s run playsound minecraft:entity.enderman.teleport ambient @s
execute as @a[tag=lockedWarp] run tag @s remove lockedWarp

execute as @a[scores={warp=1..}] run scoreboard players set @s warp 0

#@@@@@@@@@ Music System @@@@@@@@@#

# put this in a commandblock to make it loc based
execute as @a[scores={song1=..0}] run scoreboard players set @s song1 3380
execute as @a[scores={song1=3380}] at @s run playsound music_disc.wait music @s ~ ~ ~ 2
execute as @a[scores={song1=1..}] run scoreboard players remove @s song1 1

#@@@@@@@@@ Shop System @@@@@@@@@#

execute as @a[scores={buyItem=1..}] run function fallen_world:custom_items/shop

### Input or Output rubys

execute as @a[scores={rubyOutput=1,rubys=0}] run tellraw @s "§cNot enough Rubys!"
execute as @a[scores={rubyOutput=1,rubys=1..}] run give @s emerald{CustomModelData:1,display:{Name:'{"italic":false,"color":"red","text":"Ruby"}'}} 1
execute as @a[scores={rubyOutput=1,rubys=1..}] run scoreboard players remove @s rubys 1
execute as @a[scores={rubyOutput=1}] run scoreboard players set @s rubyOutput 0

execute as @a[scores={rubyInput=1},nbt=!{SelectedItem:{id:"minecraft:emerald",tag:{CustomModelData:1}}}] run tellraw @s "§cPlease put your Rubys in your main hand"
execute as @a[scores={rubyInput=1},nbt={SelectedItem:{id:"minecraft:emerald",tag:{CustomModelData:1}}}] run scoreboard players add @s rubys 1
execute as @a[scores={rubyInput=1},nbt={SelectedItem:{id:"minecraft:emerald",tag:{CustomModelData:1}}}] run clear @s emerald 1
execute as @a[scores={rubyInput=1}] run scoreboard players set @s rubyInput 0


#@@@@@@@@@ Health System @@@@@@@@@#

tag @e[tag=hurt] remove hurt
tag @e[nbt={HurtTime:10s}] add hurt

# Players die when they hit the water (experimental, not tested yet)
execute at @a as @s if block ~ ~ ~ water run scoreboard players set @s touchingWater 1
execute as @a at @s unless block ~ ~ ~ water run scoreboard players set @s touchingWater 0

execute as @a[scores={touchingWater=1}] run function fallen_world:stats/checktotem

# Play sound when hurt
# execute at @e[tag=hurt] run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 1

# Attack cooldown for weapons (not used anymore)
scoreboard players add @a attackCooldown 1

scoreboard players set @a defenceFactor 20

execute as @a run execute store result score @s cDefence run data get entity @s Inventory[{Slot:102b}].tag.Defence
execute as @a run execute store result score @s lDefence run data get entity @s Inventory[{Slot:101b}].tag.Defence
execute as @a run execute store result score @s bDefence run data get entity @s Inventory[{Slot:100b}].tag.Defence

execute as @a run scoreboard players operation @s cDefence += @s lDefence
execute as @a run scoreboard players operation @s cDefence += @s bDefence
execute as @a run scoreboard players operation @s defence = @s cDefence

execute as @a[scores={usedGapple=1..}] run function fallen_world:stats/usedgapple
execute as @a[scores={usedGodapple=1..}] run function fallen_world:stats/usedgodapple

execute as @a run scoreboard players operation @s trueDefence = @s defence
execute as @a run scoreboard players operation @s trueDefence += @s bonusDefence
execute as @a run scoreboard players operation @s trueDefence /= @s defenceFactor
execute as @a[scores={hitpoints=1..}] run scoreboard players operation @s hitpoints -= @s trueDefence
execute as @a run scoreboard players operation @s hp -= @s hitpoints
execute as @a run scoreboard players set @s hitpoints 0

### Healthcap
execute as @a[scores={Levels=1,hp=501..}] run scoreboard players set @s hp 500
execute as @a[scores={Levels=2,hp=551..}] run scoreboard players set @s hp 550
execute as @a[scores={Levels=3,hp=601..}] run scoreboard players set @s hp 600
execute as @a[scores={Levels=4,hp=651..}] run scoreboard players set @s hp 650
execute as @a[scores={Levels=5,hp=701..}] run scoreboard players set @s hp 700
execute as @a[scores={Levels=6,hp=751..}] run scoreboard players set @s hp 750
execute as @a[scores={Levels=7,hp=801..}] run scoreboard players set @s hp 800
execute as @a[scores={Levels=8,hp=1001..}] run scoreboard players set @s hp 1000
execute as @a[scores={Levels=9,hp=1201..}] run scoreboard players set @s hp 1200
execute as @a[scores={Levels=10,hp=1701..}] run scoreboard players set @s hp 1700
execute as @a[scores={Levels=11,hp=2001..}] run scoreboard players set @s hp 2000
execute as @a[scores={Levels=12,hp=2501..}] run scoreboard players set @s hp 2500
execute as @a[scores={Levels=13,hp=3001..}] run scoreboard players set @s hp 3000

### If dead
execute as @a if entity @s[gamemode=!creative,tag=!dead,scores={hp=..0}] at @s run function fallen_world:stats/checktotem

### Respawn (200 ticks is 10 sec)
execute as @a if entity @s[tag=dead] run scoreboard players add @s respawnCooldown 1
execute as @a if entity @s[tag=dead,scores={respawnCooldown=200}] at @s run function fallen_world:stats/respawn
execute as @a if entity @s[scores={respawnCooldown=200..}] run scoreboard players set @s respawnCooldown 0

# execute as @a[gamemode=!creative,gamemode=!spectator] run title @s actionbar ["",{"text":"❤ ","color":"red"},{"score":{"name":"@s","objective":"hp"},"color":"red"},{"text":" / ","color":"red"},{"score":{"name":"@s","objective":"max_hp"},"color":"red"},{"text":" \u0020 \u0020 ✠ ","color":"blue","bold":"true"},{"score":{"name":"@s","objective":"defence"},"color":"blue"},{"text":" \u0020 \u0020 ✦ ","color":"gold","bold":"true"},{"score":{"name":"@s","objective":"mana"},"color":"gold"},{"text":" Mana","color":"gold"}]
execute as @a[gamemode=adventure] run title @s actionbar ["",{"score":{"name":"@s","objective":"hp"},"color":"dark_red"},{"text":" / ","color":"dark_red"},{"score":{"name":"@s","objective":"max_hp"},"color":"dark_red"},{"text":" \uE002 "},{"text":" \u0020 \u0020 ","bold":"true"},{"score":{"name":"@s","objective":"defence"},"color":"blue"},{"text":" \uE011 ","color":"blue"},{"text":" \u0020 \u0020 ","bold":"true"},{"score":{"name":"@s","objective":"mana"},"color":"light_purple"},{"text":" \uE004","bold":"true"},{"text":" \u0020 \u0020 ","bold":"true"},{"score":{"name":"@s","objective":"rubys"},"color":"white"},{"text":" \uE000"}]

# Vanilla max-health: 400

bossbar set title players @a

### Remove Vanilla Health
execute as @a run attribute @s generic.max_health base set 2000
effect give @a minecraft:instant_health 3 100 true

#@@@@@@@@@ Spell System @@@@@@@@@#

# execute as @a[scores={usedWand=0}] at @s unless block ~ ~-1 ~ air run effect clear @s minecraft:slow_falling

# execute as @a[scores={usedLeftWand=1..,attackCooldown=60..}] at @s run execute at @e[tag=hurt,distance=0..30] run function fallen_world:left_spells/directory
# execute as @a[scores={usedWand=1..,attackCooldown=60..}] at @s run function fallen_world:spells/directory

# When using the wand (left click). Run the command at the enemie you are trying to hit. Useful for spawning fireballs etc.
execute as @a[scores={usedLeftWand=1..}] at @s run execute at @e[tag=hurt,distance=0..30] run function fallen_world:left_spells/directory
execute as @a[scores={usedWand=1..}] at @s run function fallen_world:spells/directory

#@@@@@@@@@ Emoji Menu @@@@@@@@@#

execute as @a[scores={e=1..}] run tellraw @s ["",{"text":"Emoji Menu (v0.1) \n","color":"gold"},{"text":"","clickEvent":{"action":"run_command","value":"/say "}},{"text":"","clickEvent":{"action":"run_command","value":"/say "}},{"text":"","clickEvent":{"action":"run_command","value":"/say "}},{"text":"","clickEvent":{"action":"run_command","value":"/say "}},{"text":"","clickEvent":{"action":"run_command","value":"/say "}},{"text":"","clickEvent":{"action":"run_command","value":"/say "}}]
execute as @a[scores={e=1..}] run scoreboard players set @s e 0

### Give commands for signs
#give @p oak_sign{BlockEntityTag:{Text1:'{"text":"[Buy]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buyItem set 2"}}',Text2:'{"text":"10x \\uE008","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 2"}}',Text3:'{"text":"for 2 \\uE000","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 2"}}'}} 1
#give @p oak_sign{BlockEntityTag:{Text1:'{"text":"[Buy]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buyItem set 3"}}',Text2:'{"text":"Diamond Hammer \\uE009","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 3"}}',Text3:'{"text":"for 13 \\uE000","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 3"}}'}} 1
#give @p oak_sign{BlockEntityTag:{Text1:'{"text":"[Buy]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buyItem set 4"}}',Text2:'{"text":"Iron Hammer\\uE010","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 4"}}',Text3:'{"text":"for 7 \\uE000","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 4"}}'}} 1
#give @p oak_sign{BlockEntityTag:{Text1:'{"text":"[Buy]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buyItem set 5"}}',Text2:'{"text":"Shield \\uE011","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 5"}}',Text3:'{"text":"for 3\\uE000","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 5"}}'}} 1

#give @p oak_sign{BlockEntityTag:{Text1:'{"text":"[Buy]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buyItem set 6"}}',Text2:'{"text":"\\uE012","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 6"}}',Text3:'{"text":"for 8\\uE000","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 6"}}'}} 1
#give @p oak_sign{BlockEntityTag:{Text1:'{"text":"[Buy]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buyItem set 7"}}',Text2:'{"text":"\\uE013","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 7"}}',Text3:'{"text":"for 18\\uE000","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 7"}}'}} 1
#give @p oak_sign{BlockEntityTag:{Text1:'{"text":"[Buy]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buyItem set 8"}}',Text2:'{"text":"\\uE014","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 8"}}',Text3:'{"text":"for 12\\uE000","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 8"}}'}} 1
#give @p oak_sign{BlockEntityTag:{Text1:'{"text":"[Buy]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger buyItem set 9"}}',Text2:'{"text":"\\uE015","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 9"}}',Text3:'{"text":"for 6\\uE000","color":"white","clickEvent":{"action":"run_command","value":"/trigger buyItem set 9"}}'}} 1

#give @p oak_sign{BlockEntityTag:{Text2:'{"text":"[Input]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger rubyInput"}}',Text3:'{"text":"\\uE000","color":"white","clickEvent":{"action":"run_command","value":"/trigger rubyInput"}}'}} 1
#give @p oak_sign{BlockEntityTag:{Text2:'{"text":"[Output]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger rubyOutput"}}',Text3:'{"text":"\\uE000","color":"white","clickEvent":{"action":"run_command","value":"/trigger rubyOutput"}}'}} 1

# kill @e[tag=Zombo]