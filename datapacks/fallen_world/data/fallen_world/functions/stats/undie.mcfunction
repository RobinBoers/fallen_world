### If a player is saved by totem (runs as player at player)

particle totem_of_undying ~ ~ ~ 3 3 3 1 200
playsound minecraft:item.totem.use player @a[distance=0..16] ~ ~ ~
scoreboard players set @s hp 40
effect clear @s
effect give @s minecraft:regeneration 45 1
effect give @s minecraft:fire_resistance 45
effect give @s minecraft:absorption 45 1
title @s title "\uE016"
replaceitem entity @s container.11 apple{display:{Name:'{"text":"Totem Slot"}'},CustomModelData:2,SlotItem:1b}