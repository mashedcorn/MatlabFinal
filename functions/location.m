function [coords] = location(x,y,map)
    coords = x;
    switch y
        case {'north', 'forward'}
            
            if map(x(1,1)-1,x(1,2)) == 0
               disp('you cannot go that way')
            else
                coords(1,1) = x(1,1)-1;
            end
            
        case {'south', 'backwards'}
            
            if map(x(1,1)+1,x(1,2)) == 0
                disp('you cannot go that way')
            else
                coords(1,1) = x(1,1)+1;
            end
            
        case {'east', 'right'}
            
            if map(x(1,1),x(1,2)+1) == 0
                disp('you cannot go that way')
            else
                coords(1,2) = x(1,2)+1;
            end
            
        case {'west', 'left'}
            
            if map(x(1,1),x(1,2)-1) == 0
                 disp('you cannot go that way')
            else
                coords(1,2) = x(1,2)-1;
            end
    end

