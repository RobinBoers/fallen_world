### RUNS AT AS PLAYER ENTERING DUNGEON ###

tellraw @s "§2Entering Ice Dungeon"

### Delete chest
fill 238 163 -151 238 163 -151 air

### Close portal
fill 246 163 -151 246 165 -149 minecraft:spruce_fence

tp @s 237 164 -150
playsound minecraft:block.ender_chest.close ambient @s ~ ~ ~ 1 0.3
playsound minecraft:block.end_portal.spawn ambient @s ~ ~ ~ 1 0.3
playsound minecraft:entity.ender_dragon.flap ambient @s ~ ~ ~ 1 0.3
playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~

schedule function fallen_world:dungeon/mobs/spawn_ice_boss 50t