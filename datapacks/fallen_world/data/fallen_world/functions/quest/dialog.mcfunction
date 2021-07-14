#@@@@@@@@@ Quest System @@@@@@@@@#

# This system works wit a score. When entering a house, your score will be set. When 
# clicking a villager, the score will increase, and a dialog will play. Then it increases
# the score by one, so the dialog will not endlessly play. When you click the villager
# again, the score is increased, and a new line of dialog will be played.

### Reset dialogVill to prevent players from starting dialog when interacting with regular villagers
execute as @a if entity @s[scores={dialogVill=1}] run scoreboard players set @s dialogVill 0

### When entering / leaving place with Quest Villager - below door
# execute as @p if entity @s[distance=1..2] run scoreboard players set @s dialogVill 0

### When in front of Ruby, Paul or any other Quest Villager (change number at end)
# execute as @p if entity @s[distance=1..2] run scoreboard players set @s dialogVill 2

### When completing the Save Zlamouth quest
# When there aren't any entities with the "siege tag" around, the player has completed the 
execute unless entity @e[tag=siege] run scoreboard players set @a[scores={cQuest=3}] dialogVill 117

### Set right score for bank
execute as @a if entity @s[scores={dialogVill=30,hasToStoreRuby=1}] run scoreboard players set @s dialogVill 50
execute as @a if entity @s[scores={dialogVill=43}] run scoreboard players set @s hasToStoreRuby 1

execute as @a if entity @s[scores={clickedVill=1..,dialogVill=3..}] at @s run playsound minecraft:entity.villager.yes master @a[distance=..7] ~ ~ ~ 1 0.8
execute as @a if entity @s[scores={clickedVill=1..}] at @s run scoreboard players set @s clickedVill 0

### Dialog itself
execute as @a if entity @s[scores={dialogVill=3}] run tellraw @s ["",{"text":"[Paul] ","color":"dark_aqua"},{"text":"Hello, traveller!\n I need you to give this package to my friend Ruby."}]
execute as @a if entity @s[scores={dialogVill=5}] run tellraw @s ["",{"text":"[Paul] ","color":"dark_aqua"},{"text":"He lives in Zlamouth, at the Library"}]
execute as @a if entity @s[scores={dialogVill=7}] run tellraw @s ["",{"text":"[Paul] ","color":"dark_aqua"},{"text":"Can you help me?\n§c< Right click to accept Quest >"}]
execute as @a if entity @s[scores={dialogVill=9}] run tellraw @s ["",{"text":"[Paul] ","color":"dark_aqua"},{"text":"Thanks! The roadsigns will bring you to Zlamouth"}]

execute as @a if entity @s[scores={dialogVill=13}] run tellraw @s ["",{"text":"[Ruby] ","color":"red"},{"text":"Hello, traveller! \nThank you for bringing me my package!"}]
execute as @a if entity @s[scores={dialogVill=15}] run tellraw @s ["",{"text":"[Ruby] ","color":"red"},{"text":"Here's 3 Rubys for the effort. \nIf you want, you can bring them to the bank for safe keeping."}]

execute as @a if entity @s[scores={dialogVill=31}] run tellraw @s ["",{"text":"[Jonas] ","color":"blue"},{"text":"Hi there!"}]
execute as @a if entity @s[scores={dialogVill=33}] run tellraw @s ["",{"text":"[Jonas] ","color":"blue"},{"text":"If you want, I can store your Rubys in my vault, for safe keeping"}]
execute as @a if entity @s[scores={dialogVill=35}] run tellraw @s ["",{"text":"[Jonas] ","color":"blue"},{"text":"When in the vault, you can still access them trough our system!"}]
execute as @a if entity @s[scores={dialogVill=37}] run tellraw @s ["",{"text":"[Jonas] ","color":"blue"},{"text":"How much Rubys are stored in the vault, is displayed in your hud."}]
execute as @a if entity @s[scores={dialogVill=39}] run tellraw @s ["",{"text":"[Jonas] ","color":"blue"},{"text":"When buying something, we will process your purchase, and transfer the Rubys to the new owner."}]
execute as @a if entity @s[scores={dialogVill=41}] run tellraw @s ["",{"text":"[Jonas] ","color":"blue"},{"text":"Well, what do you think?\n§c< Right click to store your Rubys in the bank vault >"}]
execute as @a if entity @s[scores={dialogVill=43}] run tellraw @s ["",{"text":"[Jonas] ","color":"blue"},{"text":"Great! To store your Rubys in the vault, put them in your main hand, and click the input sign!"}]

execute as @a if entity @s[scores={dialogVill=51}] run tellraw @s ["",{"text":"[Jonas] ","color":"blue"},{"text":"Hi there!"}]
execute as @a if entity @s[scores={dialogVill=53}] run tellraw @s ["",{"text":"[Jonas] ","color":"blue"},{"text":"If you want to access your Rubys, click the output sign!"}]

execute as @a if entity @s[scores={dialogVill=61}] run tellraw @s ["",{"text":"[Thomas] ","color":"gold"},{"text":"Hello stranger."}]
execute as @a if entity @s[scores={dialogVill=63}] run tellraw @s ["",{"text":"[Thomas] ","color":"gold"},{"text":"Our village has been pillages by Pirates. I need your help defeating them. \n§c< Right click to accept Quest >"}]
execute as @a if entity @s[scores={dialogVill=65}] run tellraw @s ["",{"text":"[Thomas] ","color":"gold"},{"text":"Thank you stranger. Their HQ is in the center of this vulcano. Follow the path to find it."}]
execute as @a if entity @s[scores={dialogVill=67}] run tellraw @s ["",{"text":"[Thomas] ","color":"gold"},{"text":"When you enter the portal you have to find their treasure room. Take everything you can."}]
execute as @a if entity @s[scores={dialogVill=69}] run tellraw @s ["",{"text":"[Thomas] ","color":"gold"},{"text":"Then find the portal to go back. It is at the bottom of their HQ in a secret cave."}]

execute as @a if entity @s[scores={dialogVill=111}] run tellraw @s ["",{"text":"[Richard] ","color":"gold"},{"text":"Help! Zlamouth is being attacked by a Zombie Army from the Dark Forest!"}]
execute as @a if entity @s[scores={dialogVill=113}] run tellraw @s ["",{"text":"[Richard] ","color":"gold"},{"text":"Can you please help us? Backup is coming, but it might be to late! \n§c< Right click to accept Quest >"}]
execute as @a if entity @s[scores={dialogVill=115}] run tellraw @s ["",{"text":"[Richard] ","color":"gold"},{"text":"Thank god! Here's your sword and your armor. You can keep it. Now run to the front gate!"}]

execute as @a if entity @s[scores={dialogVill=71}] run tellraw @s ["",{"text":"[Ruby] ","color":"red"},{"text":"Hello Bandit. \nWelcome to Pirate Bay."}]
execute as @a if entity @s[scores={dialogVill=73}] run tellraw @s ["",{"text":"[Ruby] ","color":"red"},{"text":"To unlock your warp point, stand on the golden block."}]

execute as @a if entity @s[scores={dialogVill=75}] run tellraw @s ["",{"text":"[Ruby] ","color":"red"},{"text":"Hello Adventurer. \nWelcome to the Dark Forest."}]
execute as @a if entity @s[scores={dialogVill=77}] run tellraw @s ["",{"text":"[Ruby] ","color":"red"},{"text":"To unlock your warp point, stand on the ruby block."}]

execute as @a if entity @s[scores={dialogVill=79}] run tellraw @s ["",{"text":"[Ruby] ","color":"red"},{"text":"Hello Sailor. \nWelcome to the Far Islands."}]
execute as @a if entity @s[scores={dialogVill=81}] run tellraw @s ["",{"text":"[Ruby] ","color":"red"},{"text":"This bonus region isn't finished yet. So please come back later."}]
execute as @a if entity @s[scores={dialogVill=83}] run tellraw @s ["",{"text":"[Ruby] ","color":"red"},{"text":"To unlock your warp point, stand on the emerald block."}]

### Show popup when accepting a Quest
execute as @a if entity @s[scores={dialogVill=9}] run advancement grant @s only fallen_world_utility:start_simple_delivery
execute as @a if entity @s[scores={dialogVill=65}] run advancement grant @s only fallen_world_utility:start_free_pirate_bay
execute as @a if entity @s[scores={dialogVill=65}] run advancement grant @s only fallen_world_utility:start_save_zlamouth

### Set score to quest number
execute as @a if entity @s[scores={dialogVill=9}] run scoreboard players set @s cQuest 1
execute as @a if entity @s[scores={dialogVill=65}] run scoreboard players set @s cQuest 2
execute as @a if entity @s[scores={dialogVill=115}] run scoreboard players set @s cQuest 3

### Show popup and play sound when completing a Quest
execute as @a if entity @s[scores={dialogVill=13}] at @s run playsound minecraft:ui.toast.challenge_complete player @s
execute as @a if entity @s[scores={dialogVill=13}] run tag @s add unlockedSpawn
execute as @a if entity @s[scores={dialogVill=13}] run advancement grant @s only fallen_world_utility:end_simple_delivery
execute as @a if entity @s[scores={dialogVill=13}] run give @s emerald{CustomModelData:1,display:{Name:'{"italic":false,"color":"red","text":"Ruby"}'}} 54

execute as @a if entity @s[scores={dialogVill=90}] run tp @s -347 165 159
execute as @a if entity @s[scores={dialogVill=90}] at @s run playsound minecraft:ui.toast.challenge_complete player @s
execute as @a if entity @s[scores={dialogVill=90}] run advancement grant @s only fallen_world_utility:end_free_pirate_bay

execute as @a if entity @s[scores={dialogVill=117}] at @s run playsound minecraft:ui.toast.challenge_complete player @s
execute as @a if entity @s[scores={dialogVill=117}] at @s run advancement grant @s only fallen_world_utility:end_save_zlamouth

### Player can now accept new quests
execute as @a if entity @s[scores={dialogVill=13}] run scoreboard players set @s cQuest 0
execute as @a if entity @s[scores={dialogVill=90}] run scoreboard players set @s cQuest 0
execute as @a if entity @s[scores={dialogVill=117}] run scoreboard players set @s cQuest 0

### Give materials and such
execute as @a if entity @s[scores={dialogVill=3}] run give @s brown_shulker_box{display:{Name:'{"text":"Package","italic":false}',Lore:['{"text":"Bring this to Ruby","color":"gray"}']},HideFlags:63,BlockEntityTag:{Lock:"loly",CustomName:'{"text":"Package","italic":false}'}} 1
# execute as @a if entity @s[scores={dialogVill=9}] run give @s minecraft:cobblestone 6
# execute as @a if entity @s[scores={dialogVill=9}] run give @s minecraft:stick 1
execute as @a if entity @s[scores={dialogVill=9}] run fill 186 145 -349 186 144 -349 minecraft:air

execute as @a if entity @s[scores={dialogVill=13}] run clear @s brown_shulker_box{display:{Name:'{"text":"Package","italic":false}',Lore:['{"text":"Bring this to Ruby","color":"gray"}']},HideFlags:63,BlockEntityTag:{Lock:"loly",CustomName:'{"text":"Package","italic":false}'}} 1
execute as @a if entity @s[scores={dialogVill=15}] run summon item -120 76 -199 {Item:{id:"minecraft:emerald",Count:3b,tag:{CustomModelData:1,display:{Name:'{"italic":false,"color":"red","text":"Ruby"}'}}}}

execute as @a if entity @s[scores={dialogVill=115}] run give @s iron_sword
execute as @a if entity @s[scores={dialogVill=115}] run give @s chainmail_helmet
execute as @a if entity @s[scores={dialogVill=115}] run give @s leather_chestplate
execute as @a if entity @s[scores={dialogVill=115}] run give @s chainmail_leggings
execute as @a if entity @s[scores={dialogVill=115}] run give @s leather_boots
execute at @e[tag=siegeStart] as @a if entity @s[scores={dialogVill=115}] run function fallen_world:quest/plains/attack_from_dark_forest

### Make the score higher after clicking a villager, to make them SHUT UP
execute as @a if entity @s[scores={dialogVill=3}] run scoreboard players add @s dialogVill 1
execute as @a if entity @s[scores={dialogVill=5}] run scoreboard players add @s dialogVill 1
execute as @a if entity @s[scores={dialogVill=7}] run scoreboard players add @s dialogVill 1

execute as @a if entity @s[scores={dialogVill=13}] run scoreboard players add @s dialogVill 1

execute as @a if entity @s[scores={dialogVill=31}] run scoreboard players add @s dialogVill 1
execute as @a if entity @s[scores={dialogVill=33}] run scoreboard players add @s dialogVill 1
execute as @a if entity @s[scores={dialogVill=35}] run scoreboard players add @s dialogVill 1
execute as @a if entity @s[scores={dialogVill=37}] run scoreboard players add @s dialogVill 1
execute as @a if entity @s[scores={dialogVill=39}] run scoreboard players add @s dialogVill 1
execute as @a if entity @s[scores={dialogVill=41}] run scoreboard players add @s dialogVill 1

execute as @a if entity @s[scores={dialogVill=51}] run scoreboard players add @s dialogVill 1

execute as @a if entity @s[scores={dialogVill=61}] run scoreboard players add @s dialogVill 1
execute as @a if entity @s[scores={dialogVill=63}] run scoreboard players add @s dialogVill 1
execute as @a if entity @s[scores={dialogVill=65}] run scoreboard players add @s dialogVill 1
execute as @a if entity @s[scores={dialogVill=67}] run scoreboard players add @s dialogVill 1

execute as @a if entity @s[scores={dialogVill=71}] run scoreboard players add @s dialogVill 1

execute as @a if entity @s[scores={dialogVill=75}] run scoreboard players add @s dialogVill 1
execute as @a if entity @s[scores={dialogVill=79}] run scoreboard players add @s dialogVill 1
execute as @a if entity @s[scores={dialogVill=81}] run scoreboard players add @s dialogVill 1

execute as @a if entity @s[scores={dialogVill=111}] run scoreboard players add @s dialogVill 1
execute as @a if entity @s[scores={dialogVill=113}] run scoreboard players add @s dialogVill 1

### Reset score to 0 when ending dialog (so you dont evoke more by clicking the Quest Villager)
execute as @a if entity @s[scores={dialogVill=9}] run scoreboard players set @s dialogVill 0
execute as @a if entity @s[scores={dialogVill=15}] run scoreboard players set @s dialogVill 0
execute as @a if entity @s[scores={dialogVill=43}] run scoreboard players set @s dialogVill 0
execute as @a if entity @s[scores={dialogVill=53}] run scoreboard players set @s dialogVill 0
execute as @a if entity @s[scores={dialogVill=69}] run scoreboard players set @s dialogVill 0
execute as @a if entity @s[scores={dialogVill=73}] run scoreboard players set @s dialogVill 0
execute as @a if entity @s[scores={dialogVill=77}] run scoreboard players set @s dialogVill 0
execute as @a if entity @s[scores={dialogVill=83}] run scoreboard players set @s dialogVill 0
execute as @a if entity @s[scores={dialogVill=90}] run scoreboard players set @s dialogVill 0
execute as @a if entity @s[scores={dialogVill=115}] run scoreboard players set @s dialogVill 0
execute as @a if entity @s[scores={dialogVill=117}] run scoreboard players set @s dialogVill 0

### Show current Quest in chat when using /trigger currentQuest
execute as @a[scores={currentQuest=1,cQuest=0}] run tellraw @s ["",{"text":"Current Quest:","color":"gold"},{"text":" None\n"},{"text":"You currently are not doing a Quest"}]
execute as @a[scores={currentQuest=1,cQuest=1}] run tellraw @s ["",{"text":"Current Quest:","color":"gold"},{"text":" A Simple Delivery\n"},{"text":"Task:","color":"dark_aqua"},{"text":" Travel to Zlamouth and give Pauls package to Ruby."}]
execute as @a[scores={currentQuest=1,cQuest=2}] run tellraw @s ["",{"text":"Current Quest:","color":"gold"},{"text":" Free Pirate Bay\n"},{"text":"Task:","color":"dark_aqua"},{"text":" Find the pirate HQ and defeat them once and for all."}]
execute as @a[scores={currentQuest=1,cQuest=3}] run tellraw @s ["",{"text":"Current Quest:","color":"gold"},{"text":" Save Zlamouth\n"},{"text":"Task:","color":"dark_aqua"},{"text":" Help the Fallen World Army defeat a Zombie Siege from the Dark Forest. Will you win?"}]

## Reset trigger
execute as @a[scores={currentQuest=1..}] run scoreboard players set @s currentQuest 0

#execute as @a[distance=0..10,tag=unlockedPirateBay] run scoreboard players set @s dialogVill 0
#execute as @a[distance=0..10,tag=!unlockedPirateBay,scores={dialogVill=0}] run scoreboard players set @s dialogVill 70

#execute as @a[distance=0..10,tag=unlockedForest] run scoreboard players set @s dialogVill 0
#execute as @a[distance=0..10,tag=!unlockedForest,scores={dialogVill=0}] run scoreboard players set @s dialogVill 74

#execute as @a[distance=0..10,tag=unlockedIslands] run scoreboard players set @s dialogVill 0
#execute as @a[distance=0..10,tag=!unlockedIslands,scores={dialogVill=0}] run scoreboard players set @s dialogVill 78

#execute as @a[distance=0..10,scores={cQuest=2}] run scoreboard players set @s dialogVill 0
#execute as @a[distance=0..10,scores={dialogVill=0,cQuest=0}] run scoreboard players set @s dialogVill 60