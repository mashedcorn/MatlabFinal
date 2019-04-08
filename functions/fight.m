function [damage] = fight()

    disp('Get ready to swing your phone!');
    m = mobiledev;
    m.AccelerationSensorEnabled = 1;
    pause(1.5);
    disp('3');
    pause(1);
    disp('2');
    pause(1);
    disp('1');
    m.Logging = 1;
    pause(1); 
    [a] = accellog(m);
    m.Logging = 0;
    accel = sqrt(a(:,1).^2+a(:,2).^2+a(:,3).^2 )-9.8;
    damage = int8(max(accel)/4);
    fprintf('You do %d damage!', damage);
    clear m;




