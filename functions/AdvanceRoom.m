function [playerHp,game] = AdvanceRoom(coords,map,playerHp)
%testing purposes only
mon = 2;
playerHp = 100;
map = [0, 0, 0, 0, 0;0, 0, 2, 0, 0;0, 0, 1, 0, 0; 0, 0, 1, 0, 0; 0, 0, 0, 0, 0];
map(:,:,2) = [0, 0, 0, 0, 0;0, 0, 2, 0, 0;0, 0, 1, 0, 0; 0, 0, 1, 0, 0; 0, 0, 0, 0, 0];
coords = [2,3];
%testing purposes only 

    locationData = map(coords(1,1),coords(1,2),1);
    
    
      goblin = [100];
      slime = [1000];
      skeleton = [60];
      madAdventurer = [250];
      giantRat = [];
      theOoze = [];
      theCobalt = [2];
   
    if locationData > 1
        roomDescrip(coords, map);
        
        [playerHp,game,map] = monster(playerHp,locationData,coords,map);
        
    else 
        roomDescrip(coords, map);
    end
            
        