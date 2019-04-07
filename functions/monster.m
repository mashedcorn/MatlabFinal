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
name = 'a cobalt';
stats = [5,2,50];
else
    disp('wrong numbah');
    return
end

battle = 1;

while battle == 1
    disp(name);
    
    if stats(1,1) <= 0 && playerHp>0
        disp('You are Vitorious!')
        battle = 0;
        game =1;
        map(coords(1,1),coords(1,2)) = 1;
    elseif playerHp <= 0
        battle = 0;
        game = 0;
    else
        monAttk = randi([stats(1,2),stats(1,3)]);
        playerHp = playerHp-monAttk;
        disp(playerHp);
        damage = fight();
        stats(1,1) = stats(1,1)-damage;
    end
        
end