C=1
Damage=0
while C==1
    clear
    m = mobiledev;
    m.AccelerationSensorEnabled = 1
    m.Logging = 1
    [a,t] = accellog(m);
    pause(5);
    disp(m);
    plot(t,a)
    disp(a)
    if a(1,1)<1 & a(1,1)>-1 
        Damage=0
        disp(Damage)
    elseif a(1,1)<5 & a(1,1)>1 || a(1,1)>-5 & a(1,1)<-1 
        Damage=5
        disp(Damage)
    elseif a(1,1)<10 & a(1,1)>5 || a(1,1)>-10 & a(1,1)<-5
        Damage=10
        disp(Damage)
    elseif a(1,1)<15 & a(1,1)>10 || a(1,1)>-15 & a(1,1)<-10
        Damage=15
        disp(Damage)
    elseif a(1,1)<20 & a(1,1)>15 || a(1,1)>-20 & a(1,1)<-17
        Damage=20
        disp(Damage)
    else 
        Damage=30
        didp(Damage)
    end
    C=0
end