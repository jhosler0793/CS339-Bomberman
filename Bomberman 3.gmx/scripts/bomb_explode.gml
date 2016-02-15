
instance_create(x,y, explosion)

//Only creates explosion radius if no walls are in the way
if !place_meeting (x+64, y, obj_StopFlameWall)
{
    instance_create(x+64, y, obj_explosion_right)
}
if !place_meeting (x-64, y, obj_StopFlameWall)
{
    instance_create(x-64, y, obj_explosion_left)
}
if !place_meeting (x, y-64, obj_StopFlameWall)
{
    instance_create(x, y-64, obj_explosion_up)
}
if !place_meeting (x, y+64, obj_StopFlameWall)
{
    instance_create(x, y+64, obj_explosion_down)
}
