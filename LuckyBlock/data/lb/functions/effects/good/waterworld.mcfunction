fill ~-2 ~5 ~-6 ~2 ~-5 ~6 water replace air
summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,CustomName:'{"text":"WaterDis"}'}
scoreboard players set @e[name=WaterDis, type=armor_stand, sort=nearest, limit=1] count 100
execute if score @p oldideffect matches 24 run advancement grant @p only lb:lucky_block/fish_water
execute if score @p oldideffect matches 51 run advancement grant @p only lb:lucky_block/fire_water