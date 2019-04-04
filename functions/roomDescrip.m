function roomDescrip(x,map)
    coords = x;
    locationData = map(coords(1,1),coords(1,2),2);
    if locationData == 1 
        disp('a hallway')
    elseif locationData == 2
            disp('the end');
    end
        