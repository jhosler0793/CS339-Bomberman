/*Chooses a semi-random (so you're guaranteed to get at least one of each
type before destroying all objects) power-up to drop, 
if already dropped in certain amount, doesn't drop anymore*/

if global.speedup {speeddrop=noone}
else speeddrop=obj_SpeedUp

if global.maxbombup {maxbombdrop=noone}
else maxbombdrop=obj_MaxBombsUp

if global.blastradiusup {blastradiusdrop=noone}
else blastradiusdrop=obj_BlastRadiusUp

if global.addlife {addlifedrop=noone}
else addlifedrop=obj_1up

if global.slowdown {slowdowndrop=noone}
else slowdowndrop=obj_slowdown

if global.timestop {timestopdrop=noone}
else timestopdrop=obj_TimeStop

if global.minuslife {minuslifedrop=noone}
else minuslifedrop=obj_MinusLife

//Power-up drop rates and items vary for each stage
if global.s = 0
{
    drop = choose(noone, blastradiusdrop, noone, speeddrop, noone, maxbombdrop,
    noone, addlifedrop)
}
if global.s = 1
{
    drop = choose(noone, speeddrop, noone, maxbombdrop, noone,
    slowdowndrop, noone, addlifedrop, timestopdrop,)
}
if global.s = 2
{
    drop = choose(noone, blastradiusdrop, noone, speeddrop, noone, maxbombdrop, noone,
    slowdowndrop, noone, addlifedrop, timestopdrop, minuslifedrop)
}
if global.s = 3
{
    drop = choose(noone, speeddrop, noone, maxbombdrop, noone,
    slowdowndrop, noone, addlifedrop, noone, timestopdrop, noone, minuslifedrop, noone)
}
if global.s = 4
{
    drop = choose(noone, blastradiusdrop, noone, speeddrop, noone, maxbombdrop, noone,
    slowdowndrop, noone, addlifedrop, timestopdrop, minuslifedrop)
}

if drop != noone
{
    instance_create(x,y,drop)
}
