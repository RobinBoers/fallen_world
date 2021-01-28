######################### Custom Enchantments ############################

#@@@@@@@ Tridents @@@@@@@#

### Riptide X Tridents
execute at @e[type=minecraft:trident,nbt={Trident:{tag:{display:{Lore:['{"text":"Riptide X","color":"gray","italic":false}']}}}}] run tp @p ~ ~ ~
execute at @e[type=minecraft:trident,nbt={inGround:0b,Trident:{tag:{display:{Lore:['{"text":"Riptide X","color":"gray","italic":false}']}}}}] run effect give @p minecraft:levitation 2 1 true

#### Channeling II Tridents
execute as @e[type=trident,tag=!aZapped,nbt={inGround:1b,Trident:{tag:{display:{Lore:['{"text":"Channeling II","color":"gray","italic":false}']}}}}] run tag @s add zapp
execute at @e[type=minecraft:trident,tag=zapp] run summon minecraft:lightning_bolt
tag @e[type=trident,tag=zapp] add aZapped
tag @e[type=trident,tag=aZapped] remove zapp

#@@@@@@@@@ Arrows @@@@@@@@@#

### Arrow of Arrow Rain
execute at @e[type=minecraft:arrow,nbt={inGround:0b,Color: 24697998}] run summon arrow ~ ~ ~ {crit:1b,Tags:["ArrowRain"],SoundEvent:"item.trident.thunder"}
kill @e[type=minecraft:arrow,nbt={inGround:1b,Color: 24697998}]

### Arrow of Channeling (II)
execute at @e[type=minecraft:arrow,nbt={inGround:1b,Color: 14697997}] run summon minecraft:lightning_bolt
kill @e[type=minecraft:arrow,nbt={inGround:1b,Color: 14697997}]