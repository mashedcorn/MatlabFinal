function AdvanceRoom(x,map)
    coords = x;
    locationData = map(coords(1,1),coords(1,2),1);
    
    
      goblin = [100];
      slime = [1000];
      skeleton = [60];
      madAdventurer = [250];
      giantRat = [];
      theOoze = [];
      theCobalt = [2];
   
    if locationData > 0
        roomDescrip(coords, map);
        
        disp('insert encounter here')
        %battle(locationData)
    else 
        roomDescrip(coords, map);
    end
            
        