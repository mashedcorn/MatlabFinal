function [playerHp,game,map] = AdvanceRoom(coords,map,playerHp)
game = 1;
    locationData = map(coords(1,1),coords(1,2),1);

    if locationData > 1
        roomDescrip(coords, map);
        
        [playerHp,game,map] = monster(playerHp,locationData,coords,map);
        
    else 
        roomDescrip(coords, map);
    end
            
        