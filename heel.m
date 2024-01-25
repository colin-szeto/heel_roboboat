close all
clear 
clc

angles = 0:5:65;
port = zeros(3,length(angles));
star = zeros(3,length(angles));
center = zeros(2,length(angles));

star(1:3,1) = [-.272;-.047;10.32];
star(1:3,2) = [-.283;-.035;7.54];
star(1:3,3) = [-.29;-.024;4.793];
star(1:3,4) = [-.294;-.012;2.066];
star(1:3,5) = [-.283;-.004;0.205];

port(1:3,1) = [.272;-.047;10.32];%0
port(1:3,2) = [.261;-.058;12.983];%5
port(1:3,3) = [.25;-.069;15.704];%10
port(1:3,4) = [.239;-.078;18.397];%15
port(1:3,5) = [.225;-.091;20.208];%20
port(1:3,6) = [.209;-.108;20.615];%25
port(1:3,7) = [.191;-.125;20.615];%30
port(1:3,8) = [.171;-.141;20.615];%35
port(1:3,9) = [.151;-.155;20.615];%40
port(1:3,10) = [.129;-.167;20.615];%45
port(1:3,11) = [.106;-.178;20.615];%50
port(1:3,12) = [.082;-.186;20.615];%55
port(1:3,13) = [.058;-.192;20.615];%60
port(1:3,14) = [.033;-.196;20.615];%6



center(1:2,1) = [0;0.163];
center(1:2,2) = [0.006;0.163];
center(1:2,3) = [0.013;0.162];
center(1:2,4) = [0.019;0.161];
center(1:2,5) = [0.025;0.159];
center(1:2,6) = [0.031;0.156];
center(1:2,7) = [0.037;0.153];
center(1:2,8) = [0.043;0.15];
center(1:2,9) = [0.048;0.146];
center(1:2,10) = [0.052;0.141];
center(1:2,11) = [0.057;0.137];%50
center(1:2,12) = [0.061;0.131];%55
center(1:2,13) = [0.064;0.126];%60
center(1:2,14) = [0.067;0.12];%65



%center_bouancy = abs(star+port)/2;
center_bouancy = zeros(2,length(center));
for index = 1:length(port)
    m1 = port(3,index);
    m2 = star(3,index);
    x1 = port(1,index);
    x2 = star(1,index);
    y1 = port(2,index);
    y2 = star(2,index);

    center_bouancy(1,index) = (m1*x1 + m2*x2)/(m1+m2);
    center_bouancy(2,index) = (m1*y1 + m2*y2)/(m1+m2);

end


figure(1)
hold on
plot(center_bouancy(1,:),center_bouancy(2,:),'o',color="Red") % x % y
plot(center(1,:),center(2,:),'o',color="Green")
%plot(port(1,:),port(2,:),'o',color="cyan")
%plot(star(1,:),star(2,:),'o',color="magenta")

hold off

righting_arms = center_bouancy(1,:)-center(1,:); % in degrees
righting_arms2 = heel_prototype();

figure(2)
hold on
plot(angles,righting_arms,'LineWidth',2)
plot(angles,righting_arms2,'LineWidth',2)
plot([0,65],[0,0],color="black")
hold off
xlabel('deg')
ylabel('meters')
legend('Barco Polo','Alpha',Location='best')
title('Righting Arms Barco Polo versus Alpha')
xlim([0 65])

figure(3)
hold on 
area(angles,righting_arms) % barco polo
area(angles,righting_arms2) % alpha
area(angles(end-2:end),righting_arms(end-2:end))
newcolors = ['#0072BD';"#D95319"; '#0072BD'];
colororder(newcolors)
xlabel('deg')
ylabel('meters')
legend('Barco Polo','Alpha',Location='best')
title('Righting Arms Barco Polo versus Alpha')
xlim([0 65])
hold off
