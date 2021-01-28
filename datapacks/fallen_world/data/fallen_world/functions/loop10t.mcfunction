### 10 TICK FUNCTION FILE (LOOPS EVERY 10 ticks - 0.5 sec) ###

######################### Scoreboards ####################################

#@@@@@@@@@ Classes System @@@@@@@@@#
function fallen_world:classes/role

#@@@@@@@@@ Location Hud @@@@@@@@@#

bossbar remove village
bossbar remove paul
bossbar remove bay
bossbar remove islands
bossbar remove forest
bossbar remove vulcano
bossbar remove icepeak

bossbar remove end
bossbar remove nether

bossbar add village ["",{"text":"\uE003 "},{"text":"Zlamouth ","color":"yellow"}]
bossbar add paul ["",{"text":"\uE003 "},{"text":"Paul's House ","color":"yellow"}]
bossbar add bay ["",{"text":"\uE003 "},{"text":"Pirate Bay ","color":"yellow"}]
bossbar add islands ["",{"text":"\uE003 "},{"text":"Far Islands ","color":"yellow"}]
bossbar add forest ["",{"text":"\uE003 "},{"text":"Dark Forest ","color":"yellow"}]
bossbar add vulcano ["",{"text":"\uE003 "},{"text":"Vulcano ","color":"yellow"}]
bossbar add icepeak ["",{"text":"\uE003 "},{"text":"Ice Peak ","color":"yellow"}]

bossbar add end ["",{"text":"\uE003 "},{"text":"The End ","color":"yellow"}]
bossbar add nether ["",{"text":"\uE003 "},{"text":"The Nether ","color":"yellow"}]

bossbar set village color yellow
bossbar set paul color yellow
bossbar set bay color yellow
bossbar set islands color yellow
bossbar set forest color yellow
bossbar set vulcano color yellow
bossbar set icepeak color yellow

bossbar set end color yellow
bossbar set nether color yellow

execute as @a[nbt={Dimension:"minecraft:the_end"}] run bossbar set end players @s
execute as @a[nbt={Dimension:"minecraft:the_nether"}] run bossbar set nether players @s

execute as @a[tag=inVillage] run bossbar set village players @s
execute as @a[tag=inPauls] run bossbar set paul players @s
execute as @a[tag=inBay] run bossbar set bay players @s
execute as @a[tag=inIslands] run bossbar set islands players @s
execute as @a[tag=inForest] run bossbar set forest players @s
execute as @a[tag=inVulcano] run bossbar set vulcano players @s
execute as @a[tag=inIcePeak] run bossbar set icepeak players @s

### Custom slots
clear @a book{display:{Name:'{"text":"Spell Slot"}'},CustomModelData:2,SlotItem:1b}
clear @a elytra{display:{Name:'{"text":"Elytra Slot"}'},CustomModelData:2,SlotItem:1b}
clear @a apple{display:{Name:'{"text":"Totem Slot"}'},CustomModelData:2,SlotItem:1b}

execute as @a[nbt=!{Inventory:[{Slot:9b,id:"minecraft:enchanted_book"}]}] run replaceitem entity @s container.9 book{display:{Name:'{"text":"Spell Slot"}'},CustomModelData:2,SlotItem:1b}
execute as @a[nbt=!{Inventory:[{Slot:10b,id:"minecraft:elytra"}]}] run replaceitem entity @s container.10 elytra{display:{Name:'{"text":"Elytra Slot"}'},CustomModelData:2,SlotItem:1b}
execute as @a[nbt=!{Inventory:[{Slot:11b,id:"minecraft:totem_of_undying"}]}] run replaceitem entity @s container.11 apple{display:{Name:'{"text":"Totem Slot"}'},CustomModelData:2,SlotItem:1b}

kill @e[type=item,nbt={Item:{id:"minecraft:tripwire_hook",Count:1b}}]
kill @e[type=item,nbt={Item:{id:"minecraft:tripwire_hook",Count:2b}}]

### Healing
execute as @a if entity @s[tag=!dead,scores={hunger=18..}] unless score @s hp >= @s max_hp run scoreboard players add @s hp 1

schedule function fallen_world:loop10t 10t
