### When killing Ice Spikey (runs as player)

### Open portal
fill 246 163 -151 246 165 -149 minecraft:air

# tp @a[distance=0..20] 233.00 190.68 -140.76 90 0

### Loot
setblock 238 163 -151 chest{LootTable:"fallen_world:loot_boxes/loot_chest_ice_dungeon",CustomName:'{"text":"[Level 4] Loot Chest"}'}

function fallen_world:dungeon/summon_ice_portal

advancement revoke @a only fallen_world_utility:kill_ice_spikey
scoreboard players add @s xp 40
execute if entity @s[scores={xpNotify=1}] run tellraw @s {"text":"+40XP","color":"blue"}

title @a[distance=0..20] title {"text":"YEET","color":"green"}
title @a[distance=0..20] subtitle ["",{"text":"You Won!","color":"gold"}]