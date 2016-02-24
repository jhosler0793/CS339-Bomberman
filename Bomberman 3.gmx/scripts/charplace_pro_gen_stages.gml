//Puts the chosen character in the room

if global.char = "Bomberman"
{
    instance_create(placeX, placeY,bomberman)
}
if global.char = "MexicanBomber"
{
    instance_create(192,256,mexicanbomber)
}
if global.char = "BomberKid"
{
    instance_create(placeX,placeY,bomberthekid)
}
if global.char = "PrettyBomber"
{
    instance_create(placeX,placeY,prettybomber)
}
if global.char = "PunkBomber"
{
    instance_create(placeX, placeY,punkbomber)
}

