function [damage] = fight()

    disp('Swing your phone!');
    m = mobiledev;
    m.AccelerationSensorEnabled = 1;
    disp('3')
    pause(1);
    disp('2')
    pause(1);
    disp('1');
    pause(1);
    m.Logging = 1;
    pause(.5); 
    [a] = accellog(m);
    m.Logging = 0;
    accel = sqrt(a(:,1).^2+a(:,2).^2+a(:,3).^2 )-9.8;
    damage = int8(max(accel)/4);
    disp(damage);
    clear m;




