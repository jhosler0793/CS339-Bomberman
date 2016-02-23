var stopflame = false
instance_create(x,y, explosion)

//plays explosion sound
audio_play_sound(bomb_explosion, 2, false)

//Only creates explosion radius if no walls are in the way,
//and if hits destructible object, stops creating explosion in that direction

if !place_meeting(x+64, y, obj_StopFlameWall)
{
    stopflame = false
    instance_create(x+64, y, obj_explosion_h)
    if place_meeting(x+64, y, obj_DestructibleObject)
        stopflame = true
    if !place_meeting (x+128, y, obj_StopFlameWall) and stopflame = false
    {
        instance_create(x+128, y, obj_explosion_right)
    }
}
if !place_meeting(x-64, y, obj_StopFlameWall)
{
    stopflame = false
    instance_create(x-64, y, obj_explosion_h)
    if place_meeting(x-64, y, obj_DestructibleObject)
        stopflame = true
    if !place_meeting (x-128, y, obj_StopFlameWall) and stopflame = false
    {
        instance_create(x-128, y, obj_explosion_left)
    }
}
if !place_meeting(x, y+64, obj_StopFlameWall)
{
    stopflame = false
    instance_create(x, y+64, obj_explosion_v)
    if place_meeting(x, y+64, obj_DestructibleObject)
        stopflame = true
    if !place_meeting (x, y+128, obj_StopFlameWall) and stopflame = false
    {
        instance_create(x, y+128, obj_explosion_down)
    }
}
if !place_meeting(x, y-64, obj_StopFlameWall)
{
    stopflame = false
    instance_create(x, y-64, obj_explosion_v)
    if place_meeting(x, y-64, obj_DestructibleObject)
        stopflame = true
    if !place_meeting (x, y-128, obj_StopFlameWall) and stopflame = false
    {
        instance_create(x, y-128, obj_explosion_up)
    }
}

