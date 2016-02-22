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


drop = choose(noone, blastradiusdrop, noone, speeddrop, noone, maxbombdrop, noone,
                addlifedrop, noone, slowdowndrop, noone)

if drop != noone
{
    instance_create(x,y,drop)
}
