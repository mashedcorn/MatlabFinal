function checkPaths(coords,map)
disp('You may go:');
pause(1);
if map(coords(1,1)-1,coords(1,2),1) > 0
    disp('north')
    pause(.5);
end
if map(coords(1,1)+1,coords(1,2),1) > 0
    disp('south')
    pause(.5);
end

if map(coords(1,1),coords(1,2)+1,1) > 0
    disp('east')
    pause(.5);
end
if map(coords(1,1),coords(1,2)-1,1) > 0
    disp('west')
end