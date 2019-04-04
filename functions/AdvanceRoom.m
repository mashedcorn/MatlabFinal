function AdvanceRoom(x,map)
    coords = x;
    locationData = map(coords(1,1),coords(1,2));
    if map(coords(1,1),coords(1,2),1) == 255
        roomDescrip(coords, map);
        disp('insert encounter here')
        %battle(locationData)
    else 
        roomDescrip(coords, map);
    end
            
        