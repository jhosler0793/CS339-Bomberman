instance_create(x, y, bomb)
global.bombsAvailable -= 1;

//Snap bomb to grid
with (bomb)
    {
    if !place_snapped(64, 64) && !collision_point(x,y,obj_Wall, false, true)
       {
       if !audio_is_playing(bomb_placement_sound)
       {
            audio_play_sound(bomb_placement_sound, 2, false)
       }
       move_snap(64, 64);
       }
    }
