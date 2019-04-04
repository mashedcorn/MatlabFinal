function [damage] = fight()
c = 1;
    disp('swing your phone')
    damage=0;
while c == 1
    m = mobiledev;
    m.AccelerationSensorEnabled = 1;
    m.Logging = 1;
    [a,t] = accellog(m);
    disp('3')
    pause(1);
    disp('2')
    pause(1);
    disp('1');
    pause(1);
    m.Logging = 0;
    accel = sqrt(a.^2+a.^2+a.^2 )-9.8;
    damage = int8(max(accel));
    disp(damage);
    c = 0;
end


