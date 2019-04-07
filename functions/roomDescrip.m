function roomDescrip(x,map)
    coords = x;
    locationData = map(coords(1,1),coords(1,2),2);
    data = map(coords(1,1),coords(1,2),1)
    if locationData == 1
        pause(2)
        disp('You are in a desolate hallway with smothstone walls beconing you fourth')
            if data  >1
                pause(2)
                disp('a misshapen shadow rushes down the hall, in the torch light it reveals its self to be a')
    elseif locationData == 2
        pause(2)
        disp('you enter a torture chamber filled with bloodstained equipment');
            if data  >1
                pause(2)
                disp('you hear a metalic creeking and turn intime to see leaping from an iron maiden a')
    elseif locationData == 3
        pause(2)
        disp('you find a square room with tiles that flash diffrent color lights on the ground and a crystal skull hanging from the cieling shedding beams of light in all driections')
            if data  >1
                pause(2)
                disp('Dancing in the center of this array of colors is a')
    elseif LocationData == 4
        pause(2)
        disp('you enter a dome shaped room with a large rune circular rune and an obsidion statue of a tisted man on the far side')
            if data  >1
                pause(2)
                disp('the statue begins to writhe in place as the rune starts to flash and a shimmering flare blinds you for a moment and as your vison returns you see a')
    elseif locationData == 5
        pause(2)
        disp('you enter a room with a low hanging cieling and filled with blocky stone furniture')
            if data  >1
                pause(2)
                disp('a hudled shadow lunges at you forming, in the torch light its form becomes a')
    elseif locationData == 6
        pause(2)
        disp('you enter a room filled mountainus stacks of wooden crates')
            if data  >1
                pause(2)
                disp('a box begins to tremble violently and leaping out at you is a')
    elseif locationData == 7
        pause(2)
        disp('you enter a crudly dug cave with flimsy wooden supports')
            if data  >1
                pause(2)
                disp('stomping toward you from arounf the corner is a')
    elseif locationData == 8
        pause(2)
        disp('Before you are the ruins of a throne room with marble colums craked and fallen acros the floor and a broken throne')
            if data  >1
                pause(2)
                disp('sitting in the remains of a throne wearing a tarnished crown is a')
    elseif locationData == 9
        pause(2)
        disp('a half suknen room lies before you the murky water reaches up to you stummach')
            if data  >1
                pause(2)
                disp('bubbling up from the muck is a')
    elseif locationData == 10
        pause(2)
        disp('you find a room lined with hills of gold coins shimmering in the torch light')
            if data  >1
                pause(2)
                disp('you hear the clattering of an avalanch of coins, emerging from the treasure horde is a')
    end
        