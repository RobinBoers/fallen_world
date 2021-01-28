#@@@@@@@@@ Quest System @@@@@@@@@#

### Reset dialogVill to prevent players from starting dialog when interacting with regular villagers
execute as @a if entity @s[scores={dialogVill=1}] run scoreboard players set @s dialogVill 0

### When entering / leaving place with Quest Villager - below door
# execute as @p if entity @s[distance=1..2] run scoreboard players set @s dialogVill 0

### When in front of Ruby, Paul or any other Quest Villager (change number at end)
# execute as @p if entity @s[distance=1..2] run scoreboard players set @s dialogVill 2

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

### Show popup when accepting a Quest
execute as @a if entity @s[scores={dialogVill=9}] run advancement grant @s only fallen_world_utility:start_simple_delivery

### Set score to quest number
execute as @a if entity @s[scores={dialogVill=9}] run scoreboard players set @s cQuest 1

### Show popup and play sound when completing a Quest
execute as @a if entity @s[scores={dialogVill=13}] at @s run playsound minecraft:ui.toast.challenge_complete player @s
execute as @a if entity @s[scores={dialogVill=13}] run tag @s add unlockedSpawn
execute as @a if entity @s[scores={dialogVill=13}] run advancement grant @s only fallen_world_utility:end_simple_delivery

### Player can now accept new quests
execute as @a if entity @s[scores={dialogVill=13}] run scoreboard players set @s cQuest 0

### Give materials and such
execute as @a if entity @s[scores={dialogVill=3}] run give @s brown_shulker_box{display:{Name:'{"text":"Package","italic":false}',Lore:['{"text":"Bring this to Ruby","color":"gray"}']},HideFlags:63,BlockEntityTag:{Lock:"loly",CustomName:'{"text":"Package","italic":false}'}} 1
# execute as @a if entity @s[scores={dialogVill=9}] run give @s minecraft:cobblestone 6
# execute as @a if entity @s[scores={dialogVill=9}] run give @s minecraft:stick 1
execute as @a if entity @s[scores={dialogVill=9}] run fill 186 145 -349 186 144 -349 minecraft:air

execute as @a if entity @s[scores={dialogVill=13}] run clear @s brown_shulker_box{display:{Name:'{"text":"Package","italic":false}',Lore:['{"text":"Bring this to Ruby","color":"gray"}']},HideFlags:63,BlockEntityTag:{Lock:"loly",CustomName:'{"text":"Package","italic":false}'}} 1
execute as @a if entity @s[scores={dialogVill=15}] run summon item -120 76 -199 {Item:{id:"minecraft:emerald",Count:3b,tag:{CustomModelData:1,display:{Name:'{"italic":false,"color":"red","text":"Ruby"}'}}}}

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

### Reset score to 0 when accepting/completing Quest (so you dont evoke more by clicking the Quest Villager)
execute as @a if entity @s[scores={dialogVill=9}] run scoreboard players set @s dialogVill 0
execute as @a if entity @s[scores={dialogVill=15}] run scoreboard players set @s dialogVill 0
execute as @a if entity @s[scores={dialogVill=43}] run scoreboard players set @s dialogVill 0
execute as @a if entity @s[scores={dialogVill=53}] run scoreboard players set @s dialogVill 0

### Show current Quest in chat when using /trigger currentQuest
execute as @a[scores={currentQuest=1,cQuest=0}] run tellraw @s ["",{"text":"Current Quest:","color":"gold"},{"text":" None\n"},{"text":"You currently are not doing a Quest"}]
execute as @a[scores={currentQuest=1,cQuest=1}] run tellraw @s ["",{"text":"Current Quest:","color":"gold"},{"text":" A Simple Delivery\n"},{"text":"Task:","color":"dark_aqua"},{"text":" Travel to Zlamouth and give Pauls package to Ruby."}]

## Reset trigger
execute as @a[scores={currentQuest=1}] run trigger currentQuest set 0
