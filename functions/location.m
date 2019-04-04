function [coords] = location(x,y,map)
    coords = x;
    switch y
        case {'north', 'forward'}
            
            if map(x(1,1)-1,x(1,2),1) == 0
               disp('you cannot go that way')
            else
                coords(1,1) = x(1,1)-1;
                AdvanceRoom(coords, map);
            end
            
        case {'south', 'backwards'}
            
            if map(x(1,1)+1,x(1,2),1) == 0
                disp('you cannot go that way')
            else
                coords(1,1) = x(1,1)+1;
               AdvanceRoom(coords, map);
            end
            
        case {'east', 'right'}
            
            if map(x(1,1),x(1,2)+1,1) == 0
                disp('you cannot go that way')
            else
                coords(1,2) = x(1,2)+1;
                AdvanceRoom(coords, map);
            end
            
        case {'west', 'left'}
            
            if map(x(1,1),x(1,2)-1,1) == 0
                 disp('you cannot go that way')
            else
                coords(1,2) = x(1,2)-1;
                AdvanceRoom(coords, map);
            end
    end

