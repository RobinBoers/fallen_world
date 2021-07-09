######################### Custom Enchantments ############################

#@@@@@@@ Tridents @@@@@@@#

### Riptide X Tridents
execute at @e[type=minecraft:trident,nbt={Trident:{tag:{CustomModelData:2}}}] run tp @p ~ ~ ~
execute at @e[type=minecraft:trident,nbt={Trident:{tag:{CustomModelData:2}}}] run tp @p ~ ~ ~
execute at @e[type=minecraft:trident,nbt={Trident:{tag:{CustomModelData:2}}}] run tp @p ~ ~ ~
execute at @e[type=minecraft:trident,nbt={inGround:0b,Trident:{tag:{CustomModelData:2}}}] run effect give @p minecraft:levitation 2 1 true
execute at @e[type=minecraft:trident,nbt={inGround:1b,Trident:{tag:{CustomModelData:2}}}] run effect clear @p minecraft:levitation

#### Channeling II Tridents
execute as @e[type=trident,tag=!aZapped,nbt={inGround:1b,Trident:{tag:{CustomModelData:3}}}] run tag @s add zapp
execute at @e[type=minecraft:trident,tag=zapp] run summon minecraft:lightning_bolt
tag @e[type=trident,tag=zapp] add aZapped
tag @e[type=trident,tag=aZapped] remove zapp
# kill @e[type=minecraft:trident,nbt={inGround:1b,Trident:{tag:{display:{Lore:['{"text":"Channeling II","color":"gray","italic":false}']}}}}]

#@@@@@@@@ Spells @@@@@@@@@#

execute as @a[scores={clickStick=1..,mana=1..}] run tag @s add castingSpell

#/// Magician Spells

# ### Levetation Spell
# execute as @a[scores={Classes=2,clickStick=1..,mana=1..},nbt={Inventory:[{Slot:9b,id:"minecraft:enchanted_book",tag:{display:{Lore:['{"text":"Levetation","color":"gray","italic":false}']}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magic: 1b}}}] at @s run function fallen_world:classes/spells/cast_levetation

# ### Lightning Spell
# execute as @a[scores={Classes=2,clickStick=1..,mana=1..},nbt={Inventory:[{Slot:9b,id:"minecraft:enchanted_book",tag:{display:{Lore:['{"text":"Channeling II","color":"gray","italic":false}']}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magic: 1b}}}] at @s anchored eyes run function fallen_world:classes/spells/cast_lightning

# ### Teleportation spell Spell
# execute as @a[scores={Classes=2,clickStick=1..,mana=1..},nbt={Inventory:[{Slot:9b,id:"minecraft:enchanted_book",tag:{display:{Lore:['{"text":"Poof","color":"gray","italic":false}']}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magic: 1b}}}] at @s run function fallen_world:classes/spells/cast_teleportation

# #/// Ninja Spells

# ### Cloak Spell
# execute as @a[scores={Classes=4,clickStick=1..,mana=1..},nbt={Inventory:[{Slot:9b,id:"minecraft:enchanted_book",tag:{display:{Lore:['{"text":"Invisibility","color":"gray","italic":false}']}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magic: 1b}}}] at @s run function fallen_world:classes/spells/cast_invis

# ### Speed Spell
# execute as @a[scores={Classes=4,clickStick=1..,mana=1..},nbt={Inventory:[{Slot:9b,id:"minecraft:enchanted_book",tag:{display:{Lore:['{"text":"Speed V","color":"gray","italic":false}']}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{magic: 1b}}}] at @s run function fallen_world:classes/spells/cast_speed

##### Remove Mana when using spells
execute as @a[tag=castingSpell] run tag @s remove castingSpell
execute as @a[scores={clickStick=1..,mana=1..},gamemode=!creative,gamemode=!spectator,tag=usingMana] run scoreboard players remove @s mana 1
execute as @a[tag=usingMana] run tag @s remove usingMana
scoreboard players set @a[scores={clickStick=1..}] clickStick 0

#@@@@@@@@@ Arrows @@@@@@@@@#

### Arrow of Arrow Rain
execute at @e[type=minecraft:arrow,nbt={inGround:0b,Color: 24697998}] run summon arrow ~ ~ ~ {crit:1b,Tags:["ArrowRain"],SoundEvent:"item.trident.thunder"}
kill @e[type=minecraft:arrow,nbt={inGround:1b,Color: 24697998}]

### Arrow of Channeling (II)
execute at @e[type=minecraft:arrow,nbt={inGround:1b,Color: 14697997}] run summon minecraft:lightning_bolt
kill @e[type=minecraft:arrow,nbt={inGround:1b,Color: 14697997}]