function [coords, playerHp] = location(x,y,map,playerHp)
    coords = x;
    switch y
        case {'north', 'forward'}
            
            if map(x(1,1)-1,x(1,2),1) == 0
               disp('you cannot go that way')
            else
                coords(1,1) = x(1,1)-1;
                AdvanceRoom(coords, map,playerHp);
            end
            
        case {'south', 'backwards'}
            
            if map(x(1,1)+1,x(1,2),1) == 0
                disp('you cannot go that way')
            else
                coords(1,1) = x(1,1)+1;
               AdvanceRoom(coords, map,playerHp);
            end
            
        case {'east', 'right'}
            
            if map(x(1,1),x(1,2)+1,1) == 0
                disp('you cannot go that way')
            else
                coords(1,2) = x(1,2)+1;
                AdvanceRoom(coords, map,playerHp);
            end
            
        case {'west', 'left'}
            
            if map(x(1,1),x(1,2)-1,1) == 0
                 disp('you cannot go that way')
            else
                coords(1,2) = x(1,2)-1;
                AdvanceRoom(coords, map,playerHp);
            end
    end

