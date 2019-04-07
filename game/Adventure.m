testMap = [0, 0, 0, 0, 0;0, 0, 2, 0, 0;0, 0, 1, 0, 0; 0, 0, 1, 0, 0; 0, 0, 0, 0, 0];
testMap(:,:,2) = [0, 0, 0, 0, 0;0, 0, 2, 0, 0;0, 0, 1, 0, 0; 0, 0, 1, 0, 0; 0, 0, 0, 0, 0];


%5x5 map of 9 rooms surrounded by walls

map = testMap;
%load which map the lpayer will play

coords = [4,3];
%starting coordinates
playerHp = 100;
disp('please make sure your phone is connected to the computer and set your sensor rate to 100 Hz');
pause(5);


game = 1;

while game ==1
disp('you may go north, east or west')
user = input(' ', 's');
userInput = strsplit(user);

if length(userInput) == 2
userObjective = char(userInput(1,2));
end
userCommand = char(userInput(1,1));

    switch userCommand
        case {'go'}
            [coords,playerHp,game,map] = location(coords,userObjective,map,playerHp);
        case {'pick'}
            disp('you picked it up')
        case {'end'}
            game = 0;
        otherwise
            disp ('your command was not recognised')
    end
end