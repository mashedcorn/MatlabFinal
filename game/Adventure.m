testMap = [0, 0, 0, 0, 0;0, 1, 1, 1, 0;0, 1, 1, 1, 0; 0, 1, 1, 1, 0; 0, 0, 0, 0, 0];
%5x5 map of 9 rooms surrounded by walls

map = testMap;
%load which map the lpayer will play

coords = [4,3];
%starting coordinates




%while game ==1
disp('you may go north, east or west')
user = input(' ', 's');
userInput = strsplit(user);
userObjective = char(userInput(1,2));
userCommand = char(userInput(1,1));

    switch userCommand
        case {'go'}
            coords = location(coords,userObjective,map);
        case {'pick'}
            disp('you picked it up')
        otherwise
            disp ('your command was not recognised')
    end
%end