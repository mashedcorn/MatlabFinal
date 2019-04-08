function [coords,playerHp,game,map] = location(x,y,map,playerHp)
%checks the direction which the player is trying to go
    coords = x;
    switch y
        case {'north' 'forward'}
            
            if map(x(1,1)-1,x(1,2),1) == 0
               disp('you cannot go that way')
               game = 1;
            else
                coords(1,1) = x(1,1)-1;
                 [playerHp,game,map] = AdvanceRoom(coords, map,playerHp);
            end
            %if the player is allowed to move their coordinates are updated
        case {'south', 'backwards'}
            
            if map(x(1,1)+1,x(1,2),1) == 0
                disp('you cannot go that way')
                game = 1;
            else
                coords(1,1) = x(1,1)+1;
               [playerHp,game,map] = AdvanceRoom(coords, map,playerHp);
            end
            
        case {'east', 'right'}
            
            if map(x(1,1),x(1,2)+1,1) == 0
                disp('you cannot go that way')
                game = 1;
            else
                coords(1,2) = x(1,2)+1;
               [playerHp,game,map] = AdvanceRoom(coords, map,playerHp);
            end
            
        case {'west', 'left'}
            
            if map(x(1,1),x(1,2)-1,1) == 0
                 disp('you cannot go that way')
                 game = 1;
            else
                coords(1,2) = x(1,2)-1;
              [playerHp,game,map] =  AdvanceRoom(coords, map,playerHp);
            end
        otherwise
            game = 1;
            disp('That is not a Direction');
    end

