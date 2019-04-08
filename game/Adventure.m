testMap = [0 0 0 0 0 0 0;0 0 0 2 0 6 0;0 0 1 1 0 1 0;0 0 0 3 0 1 0;0 7 0 1 0 1 0;0 1 4 1 1 4 0;0 0 0 1 0 0 0;0 0 0 5 0 0 0;0 0 0 6 0 0 0;0 0 0 0 0 0 0];
testMap(:,:,2) = [0 0 0 0 0 0 0;0 0 0 6 0 1 0;0 0 4 7 0 1 0;0 0 0 9 0 1 0;0 3 0 1 0 1 0;0 1 2 1 1 1 0;0 0 0 5 0 0 0;0 0 0 8 0 0 0;0 0 0 10 0 0 0;0 0 0 0 0 0 0];



map = testMap;
%load which map the lpayer will play

coords = [3,3];
%starting coordinates
playerHp = 100;
disp('please make sure your phone is connected to the computer and set your sensor rate to 100 Hz');
pause(5);
roomDescrip(coords,map);
pause(2);
game = 1;

while game ==1
pause(1);
checkPaths(coords,map);
user = input(' ', 's');
userInput = strsplit(user);

if length(userInput) == 2
userObjective = char(userInput(1,2));
end
userCommand = char(userInput(1,1));

    switch userCommand
        case {'go'}
            [coords,playerHp,game,map] = location(coords,userObjective,map,playerHp);
        case {'where am i','where am I'}
            roomDescrip(coords,map);
            checkPaths(coords,map);
        case {'end'}
            game = 0;
        otherwise
            disp ('your command was not recognised')
    end
end