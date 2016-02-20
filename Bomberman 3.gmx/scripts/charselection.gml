switch (global.mpos)
{
    case 0:
    {
        global.char = "Bomberman";
        room_goto(Stage_1_Start);
        break;
    }
    case 1:
    {
        global.char = "MexicanBomber";
        room_goto(Stage_1_Start);
        break;
    }
    case 2:
    {
        global.char = "BomberKid";
        room_goto(Stage_1_Start);
        break;
    }
    case 3:
    {
        global.char = "PrettyBomber";
        room_goto(Stage_1_Start);
        break;
    }
    case 4:
    {
        global.char = "PunkBomber";
        room_goto(Stage_1_Start);
        break;
    }
}
