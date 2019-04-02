function [coords] = location(x,y,map)

    switch y
        case {'north', 'forward'}
            
            if map(x(1,1)-1,x(1,2)) == 0
               coords = x;
               disp('you cannot go that way')
            else
                coords(1,1) = x(1,1)-1;
                coords(1,2) = x(1,2);
            end
            
        case {'south', 'backwards'}
            
            if map(x(1,1)+1,x(1,2)) == 0
                coords = x;
                disp('you cannot go that way')
            else
                coords(1,1) = x(1,1)+1;
                coords(1,2) = x(1,2);
            end
            
        case {'east', 'right'}
            
            if map(x(1,1),x(1,2)+1) == 0
                coords = x;
                disp('you cannot go that way')
            else
                coords(1,2) = x(1,2)+1;
                coords(1,1) = x(1,1);
            end
            
        case {'west', 'left'}
            
            if map(x(1,1),x(1,2)-1) == 0
                 coords = x;
                 disp('you cannot go that way')
            else
                coords(1,2) = x(1,2)-1;
                coords(1,1) = x(1,1);
            end
    end

