function [playerHp,game,map] = monster(playerHp,mon,coords,map)



%[hp,dmglow,dmghigh];
if mon == 2
name = 'goblin';
stats = [25,1,5];

elseif mon == 3
name = 'slime';
stats = [50,10,20];

elseif mon == 4
name = 'mad adventurer';
stats = [60,1,15];

elseif mon ==5
name = 'giant rat';
stats = [60,1,5];

elseif mon ==6
name = 'the ooze';
stats = [70,10,15];

elseif mon ==7
name = ' cobalt';
stats = [5,2,50];
else
    disp('wrong numbah');
    return
end
%checks which monster is in the room

battle = 1;
    fprintf('%s!',name);
    disp(' '); 
    pause(2)
%initiates battle
while battle == 1
    if stats(1,1) <= 0 && playerHp>0
        disp('You are Vitorious!')
        battle = 0;
        game =1;
        map(coords(1,1),coords(1,2)) = 1;
        % if enemy is dead end battle and remove enemy from room
    else
        pause(.5);
        fprintf('The %s attacks!',name)
        disp(' ');
        monAttk = randi([stats(1,2),stats(1,3)]);
        playerHp = playerHp-monAttk;
        if playerHp <= 0
            battle = 0;
            game = 0;
            disp('You are dead.');
            %end the game if player dies
            return
        end
         fprintf('-%d health    current health:%d',monAttk,playerHp);
         disp(' ');
         pause(1);
        damage = fight();
        disp(' ');
        stats(1,1) = stats(1,1)-damage;
    end
        
end