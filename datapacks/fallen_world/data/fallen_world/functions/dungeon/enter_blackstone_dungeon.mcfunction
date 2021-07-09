### RUNS AT AS PLAYER ENTERING DUNGEON ###
tellraw @s "§2Entering Blackstone Dungeon"

playsound minecraft:block.ancient_debris.hit ambient @a ~ ~ ~ 1 0.0001
playsound minecraft:entity.cat.purr ambient @a ~ ~ ~ 1 0.0001
playsound minecraft:entity.elder_guardian.hurt ambient @a ~ ~ ~ 1 0.02

function fallen_world:dungeon/loot/generate_blackstone_dungeon
function fallen_world:dungeon/mobs/spawn_spiderguards