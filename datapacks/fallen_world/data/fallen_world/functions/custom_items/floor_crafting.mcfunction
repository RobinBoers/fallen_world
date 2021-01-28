### GROUND CRAFTING (see https://www.youtube.com/watch?v=2KCFojgBb_I for help) ###

######################### Crafting #######################################

## Trident - Riptide X
execute as @e[type=item,nbt={Item:{id:"minecraft:trident",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Riptide X","color":"gray","italic":false}']},HideFlags:63}}},distance=.0..1,limit=1,sort=nearest] at @s run summon item ~ ~ ~ {Tags:["fw_crafted"],Item:{id:"minecraft:trident",Count:1b,tag:{display:{Name:'{"text":"Trident","color":"white","italic":false}',Lore:['{"text":"Riptide X","color":"gray","italic":false}']},CustomModelData:2,Enchantments:[{}]}}}

## Trident - Channeling II
execute as @e[type=item,nbt={Item:{id:"minecraft:trident",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Channeling II","color":"gray","italic":false}']},HideFlags:63}}},distance=.0..1,limit=1,sort=nearest] at @s run summon item ~ ~ ~ {Tags:["fw_crafted"],Item:{id:"minecraft:trident",Count:1b,tag:{display:{Name:'{"text":"Trident","color":"white","italic":false}',Lore:['{"text":"Channeling II","color":"gray","italic":false}']},CustomModelData:2,Enchantments:[{}]}}}

## Trident - Arrow Rain
execute as @e[type=item,nbt={Item:{id:"minecraft:trident",Count:1b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Arrow Rain","color":"gray","italic":false}']},HideFlags:63}}},distance=.0..1,limit=1,sort=nearest] at @s run summon item ~ ~ ~ {Tags:["fw_crafted"],Item:{id:"minecraft:trident",Count:1b,tag:{display:{Name:'{"text":"Trident","color":"white","italic":false}',Lore:['{"text":"Arrow Rain","color":"gray","italic":false}']},CustomModelData:2,Enchantments:[{}]}}}

## Arrow of Arrow Rain
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow",Count:64b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Arrow Rain","color":"gray","italic":false}']},HideFlags:63}}},distance=.0..1,limit=1,sort=nearest] at @s run summon item ~ ~ ~ {Tags:["fw_crafted"],Item:{id:"minecraft:tipped_arrow",Count:64b,tag:{CustomModelData:1,CustomPotionColor:24697998,HideFlags:63,display:{Name:'{"text":"Arrow of Arrow Rain","color":"white","italic":false}',Lore:['{"text":"Arrow Rain","color":"gray","italic":false}']}}}}

## Arrow of Thunder
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow",Count:64b}}] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Channeling II","color":"gray","italic":false}']},HideFlags:63}}},distance=.0..1,limit=1,sort=nearest] at @s run summon item ~ ~ ~ {Tags:["fw_crafted"],Item:{id:"minecraft:tipped_arrow",Count:64b,tag:{CustomModelData:1,CustomPotionColor:14697997,HideFlags:63,display:{Name:'{"text":"Arrow of Thunder","color":"white","italic":false}',Lore:['{"text":"Channeling II","color":"gray","italic":false}']}}}}


######################### Sounds & Particles #############################

### Copy enchantments that already where on the trident
# execute at @e[tag=fw_crafted] as @s run 
# execute as @e[tag=fw_crafted] at @s run data modify entity @s display.Name set from entity @e[type=item,nbt={Item:{id:"minecraft:trident",Count:1b}},limit=1,distance=.0..1,sort=nearest] display.Name

# data modify entity @e[type=item,tag=fw_crafted,limit=1] display.Name set from entity @e[type=item,tag=!fw_crafted,nbt={Item:{id:"minecraft:trident",Count:1b}},limit=1,sort=nearest] display.Name

### Sounds
execute as @e[tag=fw_crafted] at @s run playsound minecraft:block.anvil.use block @a
execute as @e[tag=fw_crafted] at @s run playsound minecraft:entity.lightning_bolt.impact block @a
execute as @e[tag=fw_crafted] at @s run playsound minecraft:entity.iron_golem.hurt block @a
execute as @e[tag=fw_crafted] at @s run playsound minecraft:item.trident.thunder block @a
execute as @e[tag=fw_crafted] at @s run playsound minecraft:item.trident.thunder block @a

### Smoke particles
execute as @e[tag=fw_crafted] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Riptide X","color":"gray","italic":false}']},HideFlags:63}}},distance=.0..1,limit=1,sort=nearest] at @s run particle minecraft:smoke
execute as @e[tag=fw_crafted] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Channeling II",color":"gray","italic":false}']},HideFlags:63}}},distance=.0..1,limit=1,sort=nearest] at @s run particle minecraft:smoke
execute as @e[tag=fw_crafted] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Arrow Rain","color":"gray","italic":false}']},HideFlags:63}}},distance=.0..1,limit=1,sort=nearest] at @s run particle minecraft:smoke
execute as @e[tag=fw_crafted] at @s run execute as @e[tag=!fw_crafted,type=item,nbt={Item:{id:"minecraft:trident",Count:1b}},sort=nearest,limit=1] at @s run particle minecraft:smoke
execute as @e[tag=fw_crafted] at @s run execute as @e[tag=!fw_crafted,type=item,nbt={Item:{id:"minecraft:arrow",Count:64b}},sort=nearest,limit=1] at @s run particle minecraft:smoke

execute as @e[tag=fw_crafted] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Riptide X","color":"gray","italic":false}']},HideFlags:63}}},distance=.0..1,limit=1,sort=nearest] at @s run particle minecraft:squid_ink
execute as @e[tag=fw_crafted] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Channeling II","color":"gray","italic":false}']},HideFlags:63}}},distance=.0..1,limit=1,sort=nearest] at @s run particle minecraft:squid_ink
execute as @e[tag=fw_crafted] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Arrow Rain","color":"gray","italic":false}']},HideFlags:63}}},distance=.0..1,limit=1,sort=nearest] at @s run particle minecraft:squid_ink
execute as @e[tag=fw_crafted] at @s run execute as @e[tag=!fw_crafted,type=item,nbt={Item:{id:"minecraft:trident",Count:1b}},sort=nearest,limit=1] at @s run particle minecraft:squid_ink
execute as @e[tag=fw_crafted] at @s run execute as @e[tag=!fw_crafted,type=item,nbt={Item:{id:"minecraft:arrow",Count:64b}},sort=nearest,limit=1] at @s run particle minecraft:squid_ink

## Flame particles
execute as @e[tag=fw_crafted] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Riptide X","color":"gray","italic":false}']},HideFlags:63}}},distance=.0..1,limit=1,sort=nearest] at @s run particle minecraft:flame
execute as @e[tag=fw_crafted] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Channeling II","color":"gray","italic":false}']},HideFlags:63}}},distance=.0..1,limit=1,sort=nearest] at @s run particle minecraft:flame
execute as @e[tag=fw_crafted] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Arrow Rain","color":"gray","italic":false}']},HideFlags:63}}},distance=.0..1,limit=1,sort=nearest] at @s run particle minecraft:flame
execute as @e[tag=fw_crafted] at @s run execute as @e[tag=!fw_crafted,type=item,nbt={Item:{id:"minecraft:trident",Count:1b}},sort=nearest,limit=1] at @s run particle minecraft:flame
execute as @e[tag=fw_crafted] at @s run execute as @e[tag=!fw_crafted,type=item,nbt={Item:{id:"minecraft:arrow",Count:64b}},sort=nearest,limit=1] at @s run particle minecraft:flame

## Crit particles
execute as @e[tag=fw_crafted] at @s run particle minecraft:crit
execute as @e[tag=fw_crafted] at @s run particle minecraft:crit
execute as @e[tag=fw_crafted] at @s run particle minecraft:crit


######################### Delete Crafting Items ##########################

execute as @e[tag=fw_crafted] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Riptide X","color":"gray","italic":false}']},HideFlags:63}}},limit=1,sort=nearest]
execute as @e[tag=fw_crafted] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Channeling II","color":"gray","italic":false}']},HideFlags:63}}},limit=1,sort=nearest]
execute as @e[tag=fw_crafted] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{display:{Lore:['{"text":"Arrow Rain","color":"gray","italic":false}']},HideFlags:63}}},limit=1,sort=nearest]
execute as @e[tag=fw_crafted] at @s run kill @e[tag=!fw_crafted,type=item,nbt={Item:{id:"minecraft:trident",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=fw_crafted] at @s run kill @e[tag=!fw_crafted,type=item,nbt={Item:{id:"minecraft:arrow",Count:64b}},sort=nearest,limit=1]

######################### Remove Tag #####################################
execute as @e[tag=fw_crafted] run tag @s remove fw_crafted