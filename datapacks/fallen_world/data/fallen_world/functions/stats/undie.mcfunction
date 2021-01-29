### If a player is saved by totem (runs as player at player)

# Particles
particle totem_of_undying ~ ~ ~ 3 3 3 1 200

# Play sound
playsound minecraft:item.totem.use player @a[distance=0..16] ~ ~ ~

# Set health
scoreboard players set @s hp 40

# Remove effects
effect clear @s

# Give effects (from totem)
effect give @s minecraft:regeneration 45 1
effect give @s minecraft:fire_resistance 45
effect give @s minecraft:absorption 45 1

# Show totem icon
title @s title "\uE016"

# Remove totem
replaceitem entity @s container.11 apple{display:{Name:'{"text":"Totem Slot"}'},CustomModelData:2,SlotItem:1b}