function roomDescrip(x,map)
    coords = x;
    locationData = map(coords(1,1),coords(1,2),2);
    data = map(coords(1,1),coords(1,2),1)
    if data  >1
    if locationData == 1 
        disp('a hallway')
    elseif locationData == 2
            disp('the end');
    elseif locationData == 3
        disp('you find a square room with tiles that flash diffrent color lights on the ground and a crystal skull hanging from the cieling shedding beams of light in all driections')
    elseif LocationData == 4
        disp('you enter a dome shaped room with a large rune circular rune and an obsidion statue of a tisted man on the far side')
    elseif locationData == 5
        disp('you enter a room with a low hanging cieling and filled with blocky stone furniture')
    elseif locationData == 6
        disp('you enter a room filled mountainus stacks of wooden crates')
    elseif locationData == 7
        disp('you enter a crudly dug cave with flimsy wooden supports')
    elseif locationData == 8
        disp('Before you are the ruins of a throne room with marble colums craked and fallen acros the floor and a broken throne')
    elseif locationData == 9
        disp('a half suknen room lies before you the murky water reaches up to you stummach')
    elseif locationData == 10
        disp('you find a room lined with hills of gold coins shimmering in the torch light')
    end
        