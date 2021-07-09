# This function generates loot in chests around the map

### Lava chest in field
fill -34 34 -224 -34 34 -224 air
setblock -34 34 -224 chest[type=single]{LootTable:"fallen_world:loot_boxes/loot_chest_fields",CustomName:'{"text":"[Level 1] Loot Chest"}'} replace

### Deep cave next to redstone house
fill -68 1 -168 -68 1 -168 air
setblock -68 1 -168 chest[type=single]{LootTable:"fallen_world:loot_boxes/loot_chest_fields",CustomName:'{"text":"[Level 1] Loot Chest"}'} replace

### Secret cave beneed lake
fill -75 62 -186 -75 62 -186 air replace
setblock -75 62 -186 chest[facing=west,type=single]{LootTable:"fallen_world:loot_boxes/loot_chest_fields",CustomName:'{"text":"[Level 1] Loot Chest"}'} replace

### Pirate Chests
fill -108 71 201 -108 71 201 air
setblock -108 71 201 minecraft:chest[facing=east,type=single]{LootTable:"fallen_world:loot_boxes/loot_chest_pirates",CustomName:'{"text":"[Level 3] Loot Chest"}'} replace
fill -105 73 216 -105 73 216 air
setblock -105 73 216 chest[type=single]{LootTable:"fallen_world:loot_boxes/loot_chest_pirates",CustomName:'{"text":"[Level 3] Loot Chest"}'} replace
fill -171 70 277 -171 70 277 air
setblock -171 70 277 chest[type=single]{LootTable:"fallen_world:loot_boxes/loot_chest_pirates",CustomName:'{"text":"[Level 3] Loot Chest"}'} replace
fill -159 74 278 -159 74 278 air
setblock -159 74 278 chest[type=single]{LootTable:"fallen_world:loot_boxes/loot_chest_pirates",CustomName:'{"text":"[Level 3] Loot Chest"}'} replace

### Viking Ship
fill -121 71 87 -121 71 87 air
setblock -121 71 87 chest[facing=west]{LootTable:"fallen_world:loot_boxes/loot_chest_pirates",CustomName:'{"text":"[Level 3] Loot Chest"}'} replace

### Desert Village
fill -161 73 18 -161 73 18 air
setblock -161 73 18 chest[type=single]{LootTable:"fallen_world:loot_boxes/loot_chest_forest",CustomName:'{"text":"[Level 2] Loot Chest"}'} replace
fill -159 73 24 -159 73 24 air
setblock -159 73 24 chest[facing=south]{LootTable:"fallen_world:loot_boxes/loot_chest_forest",CustomName:'{"text":"[Level 2] Loot Chest"}'} replace

kill @e[type=item]
