setblock ~ ~ ~ stone_slab
summon rabbit ~ ~0.5 ~ {Glowing:1b,NoAI:1b,Health:0.1f,RabbitType:99,Tags:["lock_obsi"],CustomName:'{"text":"Kill me!"}'}
fill ~2 ~ ~-2 ~-2 ~2 ~-2 stone replace air
summon armor_stand ~ ~0.5 ~ {Marker:1b,Invisible:1b,Tags:["lock_obsi_inv"]}

scoreboard players add @p[scores={ingame=1},gamemode=survival] lbunluck 1